// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/attributes.dart';
import '../extensions/extensions.dart';
import '../utils.dart';
import 'class.dart';
import 'interface.dart';
import 'method.dart';
import 'type.dart';

class MethodForwardersProjection {
  MethodForwardersProjection(this.interface, this.interfaceProjection);

  /// The interface typedef that method forwarders are generated from (e.g.
  /// `Windows.Storage.IStorageItem`).
  final TypeDef interface;

  /// The interface projection that method forwarders are generated to (e.g.
  /// `Windows.Storage.StorageFile`, `Windows.Storage.IStorageFile`).
  final InterfaceProjection interfaceProjection;

  /// Whether the [interface] is a generic interface.
  bool get isGenericInterface => interface.typeSpec?.isGenericType ?? false;

  /// The shorter [interface] name without type arguments (e.g. `IMap`,
  /// `ICalendar`).
  String get shortInterfaceName => outerType(interface.shortName);

  /// The type arguments of the [interface] (e.g. `String, String?`,
  /// `StorageFile`).
  String get typeArgs => typeArguments(interface.shortName);

  /// Private field identifier for the [interface] (e.g. `_iCalendar`).
  String get fieldIdentifier => '_i${shortInterfaceName.substring(1)}';

  /// The constructor arguments passed to the constructors of the [interface].
  String? get constructorArgs {
    if (!isGenericInterface) return null;
    final creatorArg = creatorArgument;
    final iterableIidArg = iterableIidArgument;
    final args = <String>[
      if (creatorArg != null) creatorArg,
      if (iterableIidArg != null) iterableIidArg
    ];
    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }

  String? get creatorArgument {
    if (!isGenericInterface) return null;
    // Use the value typeArg to parse the creator argument on IMap and IMapView
    // interfaces as it is not required for the key typeArg.
    final typeArg = ['IMap', 'IMapView'].contains(shortInterfaceName)
        ? interface.typeSpec!.typeArg!.typeArg!
        : interface.typeSpec!.typeArg!;
    final creator = typeArg.creator;
    if (creator == null) return null;

    final typeArgProjection = TypeProjection(typeArg);
    return typeArgProjection.isWinRTEnum
        ? 'enumCreator: $creator'
        : 'creator: $creator';
  }

  String? get iterableIidArgument {
    if (!isGenericInterface) return null;
    if (['IMap', 'IMapView'].contains(shortInterfaceName)) {
      final iid = iterableIidFromMapType(interface.typeSpec!);
      return 'iterableIid: ${quote(iid)}';
    } else if (['IVector', 'IVectorView'].contains(shortInterfaceName)) {
      final iid = iterableIidFromVectorType(interface.typeSpec!);
      return 'iterableIid: ${quote(iid)}';
    }
    return null;
  }

  String get interfaceInstantiation {
    if (!isGenericInterface) return '$shortInterfaceName.from(this);';
    final iid = quote(interface.iid);
    return '${interface.shortName}.fromPtr(toInterface($iid)$constructorArgs);';
  }

  /// Tries to find the method projections for the [interface] from the given
  /// [methodProjections] by comparing method names.
  List<MethodProjection> _methodProjectionsOfInterface(
          List<MethodProjection> methodProjections) =>
      methodProjections
          .where((methodProjection) => interface.typeSpec!.type!.methods
              .map((method) => method.name)
              .contains(methodProjection.name))
          .toList();

  List<MethodProjection> get methodProjections {
    if (!isGenericInterface) {
      return InterfaceProjection(interface).methodProjections;
    }

    // Try interfaceProjection's method projections.
    final projections =
        _methodProjectionsOfInterface(interfaceProjection.methodProjections);
    if (projections.isNotEmpty) return projections;

    final String classTypeName;

    // Try to find the class that implements the interface through the
    // 'ExclusiveToAttribute'.
    if (interfaceProjection.typeDef.existsAttribute(exclusiveToAttribute)) {
      classTypeName = interfaceProjection.typeDef
          .findAttribute(exclusiveToAttribute)!
          .parameters
          .first
          .value
          .toString();
    } else {
      // Try using the interface name as a class name by removing the 'I' prefix
      classTypeName = (interfaceProjection.typeDef.name.split('.')
            ..removeLast() // Remove the shortName (e.g. IPropertySet)
            // Add shortName without 'I' prefix (e.g. PropertySet)
            ..add(interfaceProjection.shortName.substring(1)))
          .join('.');
    }

    final classProjection = ClassProjection.from(classTypeName);
    return _methodProjectionsOfInterface(classProjection.methodProjections);
  }

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final methods = <String>[];

    for (final methodProjection in methodProjections) {
      if (interfaceProjection.shortName == 'JsonObject' &&
          methodProjection.name == 'Insert') {
        // To insert null values in JsonObject, JsonValue.createNullValue()
        // needs to be used. jsonObjectInsertForwarder() passes
        // JsonValue.createNullValue() if the value argument is null.
        methods.add(jsonObjectInsertForwarder());
        continue;
      }

      if (['IVector', 'IVectorView'].contains(shortInterfaceName)) {
        // Use custom forwarder for Append to make its parameter non-nullable.
        if (methodProjection.name == 'Append') {
          methods.add(vectorAppendForwarder());
          continue;
        }

        // Use custom forwarder for IndexOf to make its value parameter
        // non-nullable.
        if (methodProjection.name == 'IndexOf') {
          methods.add(vectorIndexOfForwarder());
          continue;
        }

        // Use custom forwarder for InsertAt to make its value parameter
        // non-nullable.
        if (methodProjection.name == 'InsertAt') {
          methods.add(vectorInsertAtForwarder());
          continue;
        }

        // Use custom forwarder for SetAt to make its value parameter
        // non-nullable.
        if (methodProjection.name == 'SetAt') {
          methods.add(vectorSetAtForwarder());
          continue;
        }
      }

      methods.add(defaultForwarder(methodProjection));
    }

    if (['IMap', 'IMapView'].contains(shortInterfaceName)) {
      methods.add(mapPostamble());
    } else if (['IVector', 'IVectorView'].contains(shortInterfaceName)) {
      methods.add(vectorPostamble());
    }

    return methods;
  }

  String defaultForwarder(MethodProjection methodProjection) {
    // e.g. `int get Second` or `void addHours(int hours)`
    final methodHeader = methodProjection.methodHeader;
    final deprecatedAnnotation = methodProjection.method.isDeprecated
        ? methodProjection.method.deprecatedAnnotation
        : null;
    final overrideAnnotation =
        !methodHeader.contains('@override') ? '@override' : null;
    return [
      if (deprecatedAnnotation != null) deprecatedAnnotation,
      if (overrideAnnotation != null) overrideAnnotation,
      '$methodHeader => $fieldIdentifier.${methodProjection.shortForm};\n'
    ].join('\n');
  }

  // Custom method forwarders

  String jsonObjectInsertForwarder() {
    final keyType = typeArgs.split(', ')[0];
    final valueType = typeArgs.split(', ')[1];
    return '''
  @override
  bool insert($keyType key, $valueType value) =>
      $fieldIdentifier.insert(key, value ?? JsonValue.createNullValue());
''';
  }

  String vectorAppendForwarder() => '''
  @override
  void append(${stripQuestionMarkSuffix(typeArgs)} value) =>
      $fieldIdentifier.append(value);
''';

  String vectorIndexOfForwarder() => '''
  @override
  bool indexOf(${stripQuestionMarkSuffix(typeArgs)} value, Pointer<Uint32> index) =>
      $fieldIdentifier.indexOf(value, index);
''';

  String vectorInsertAtForwarder() => '''
  @override
  void insertAt(int index, ${stripQuestionMarkSuffix(typeArgs)} value) =>
      $fieldIdentifier.insertAt(index, value);
''';

  String vectorSetAtForwarder() => '''
  @override
  void setAt(int index, ${stripQuestionMarkSuffix(typeArgs)} value) =>
      $fieldIdentifier.setAt(index, value);
''';

  /// Method forwarders for IIterable's `first()` and IMap/IMapView's `toMap()`.
  String mapPostamble() => '''
  @override
  IIterator<IKeyValuePair<$typeArgs>> first() => $fieldIdentifier.first();

  @override
  Map<$typeArgs> toMap() => $fieldIdentifier.toMap();
''';

  /// Method forwarders for IIterable's `first()` and Vector/VectorView's
  /// `toList()`.
  String vectorPostamble() => '''
  @override
  IIterator<$typeArgs> first() => $fieldIdentifier.first();

  @override
  List<$typeArgs> toList() => $fieldIdentifier.toList();
''';

  @override
  String toString() {
    if (methodProjections.isEmpty) return '';
    return '''
  late final $fieldIdentifier = $interfaceInstantiation

  ${methods.join('\n')}
''';
  }
}
