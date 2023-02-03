// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../extensions/extensions.dart';
import '../utils.dart';
import 'type.dart';
import 'winrt_class.dart';
import 'winrt_interface.dart';
import 'winrt_method.dart';

class WinRTMethodForwardersProjection {
  WinRTMethodForwardersProjection(this.interface, this.interfaceProjection);

  /// The interface typedef that method forwarders are generated from (e.g.
  /// `Windows.Storage.IStorageItem`).
  final TypeDef interface;

  /// The interface projection that method forwarders are generated to (e.g.
  /// `Windows.Storage.StorageFile`, `Windows.Storage.IStorageFile`).
  final WinRTInterfaceProjection interfaceProjection;

  /// Whether the [interface] is a generic interface.
  bool get isGenericInterface =>
      interface.typeSpec?.baseType == BaseType.genericTypeModifier;

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
    return typeArgProjection.isEnum
        ? 'enumCreator: $creator'
        : 'creator: $creator';
  }

  String? get iterableIidArgument {
    if (!isGenericInterface) return null;
    if (['IMap', 'IMapView'].contains(shortInterfaceName)) {
      return "iterableIid: "
          "'${iterableIidFromMapType(interface.typeSpec!)}'";
    } else if (['IVector', 'IVectorView'].contains(shortInterfaceName)) {
      return "iterableIid: "
          "'${iterableIidFromVectorType(interface.typeSpec!)}'";
    }
    return null;
  }

  String get interfaceInstantiation {
    if (!isGenericInterface) return '$shortInterfaceName.from(this);';
    final iid = "'${interface.iid}'";
    return '${interface.shortName}.fromRawPointer(toInterface($iid)$constructorArgs);';
  }

  /// Tries to find the method projections for the [interface] from the given
  /// [methodProjections] by comparing method names.
  List<WinRTMethodProjection> _methodProjectionsOfInterface(
          List<WinRTMethodProjection> methodProjections) =>
      methodProjections
          .where((method) =>
              method.name != '.ctor' &&
              // Take only the interface's methods by comparing method names
              interface.typeSpec!.type!.methods
                  .map((m) => m.name)
                  .toList()
                  .contains(method.name))
          .toList();

  List<WinRTMethodProjection> get methodProjections {
    if (!isGenericInterface) {
      return WinRTInterfaceProjection(interface).methodProjections;
    }

    // Try to find method projections for the interface from the super class's
    // method projections.
    var $methodProjections =
        _methodProjectionsOfInterface(interfaceProjection.methodProjections);
    if ($methodProjections.isNotEmpty) return $methodProjections;

    const attributeName = 'Windows.Foundation.Metadata.ExclusiveToAttribute';
    final String classTypeName;

    // Try to find the class that implements the interface through the
    // 'ExclusiveToAttribute'.
    if (interfaceProjection.typeDef.existsAttribute(attributeName)) {
      classTypeName = interfaceProjection.typeDef
          .findAttribute(attributeName)!
          .parameters
          .first
          .value
          .toString();
    } else {
      // If the 'ExclusiveToAttribute' not found, try using the interface name
      // as a class name by removing the 'I' prefix.
      classTypeName = (interfaceProjection.typeDef.name.split('.')
            ..removeLast() // Remove the shortName (e.g. IPropertySet)
            // Add shortName without 'I' prefix (e.g. PropertySet)
            ..add(interfaceProjection.shortName.substring(1)))
          .join('.');
    }

    final classTypeDef = MetadataStore.getMetadataForType(classTypeName);
    if (classTypeDef == null) throw Exception("Can't find $classTypeName");

    $methodProjections = WinRTClassProjection(classTypeDef).methodProjections;
    return _methodProjectionsOfInterface($methodProjections);
  }

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final methods = <String>[];

    for (final methodProjection in methodProjections) {
      if (['IMap', 'IMapView'].contains(shortInterfaceName)) {
        // Use custom forwarder for Insert to make its value parameter nullable
        if (methodProjection.name == 'Insert') {
          // To insert null values in JsonObject, JsonValue.createNullValue()
          // needs to be used. jsonObjectInsertForwarder() passes
          // JsonValue.createNullValue() if the value argument is null.
          if (interfaceProjection.shortName == 'JsonObject') {
            methods.add(jsonObjectInsertForwarder());
            continue;
          }

          methods.add(mapInsertForwarder(methodProjection.shortForm));
          continue;
        }

        // Use custom forwarder for Lookup to make its return type nullable.
        if (methodProjection.name == 'Lookup') {
          methods.add(mapLookupForwarder(methodProjection.shortForm));
          continue;
        }
      }

      if (['IVector', 'IVectorView'].contains(shortInterfaceName)) {
        // Use custom forwarder for Append to make its parameter non-nullable.
        if (methodProjection.name == 'Append') {
          methods.add(vectorAppendForwarder());
          continue;
        }

        // Use custom forwarder for GetMany to change the type of the value
        // parameter to Pointer<NativeType>.
        if (methodProjection.name == 'GetMany') {
          methods.add(vectorGetManyForwarder(methodProjection.shortForm));
          continue;
        }

        // Use custom forwarder for IndexOf to make its 'value' parameter
        // non-nullable.
        if (methodProjection.name == 'IndexOf') {
          methods.add(vectorIndexOfForwarder());
          continue;
        }

        // Use custom forwarder for InsertAt to make its 'value' parameter
        // non-nullable.
        if (methodProjection.name == 'InsertAt') {
          methods.add(vectorInsertAtForwarder());
          continue;
        }

        // Use custom forwarder for ReplaceAll to change the type of the value
        // parameter to List<...>.
        if (methodProjection.name == 'ReplaceAll') {
          methods.add(vectorReplaceAllForwarder());
          continue;
        }

        // Use custom forwarder for SetAt to make its 'value' parameter
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

  String defaultForwarder(WinRTMethodProjection methodProjection) {
    // e.g. `int get Second` or `void addHours(int hours)`
    final declaration = methodProjection.shortDeclaration;
    final overrideAnnotation =
        declaration.contains('@override') ? '' : '@override';
    return '''
        $overrideAnnotation
        $declaration => $fieldIdentifier.${methodProjection.shortForm};
''';
  }

  // Custom method forwarder declarations
  String jsonObjectInsertForwarder() {
    final keyType = typeArgs.split(', ')[0];
    final valueType = typeArgs.split(', ')[1];
    return '''
  @override
  bool insert($keyType key, $valueType value) =>
      $fieldIdentifier.insert(key, value ?? JsonValue.createNullValue());
''';
  }

  String mapInsertForwarder(String methodShortForm) {
    final keyType = typeArgs.split(', ')[0];
    final valueType = typeArgs.split(', ')[1];
    return '''
  @override
  bool insert($keyType key, $valueType value) => $fieldIdentifier.$methodShortForm;
''';
  }

  String mapLookupForwarder(String methodShortForm) {
    final keyType = typeArgs.split(', ')[0];
    final returnType = typeArgs.split(', ')[1];
    return '''
  @override
  $returnType lookup($keyType key) => $fieldIdentifier.$methodShortForm;
''';
  }

  String vectorAppendForwarder() => '''
  @override
  void append(${stripQuestionMarkSuffix(typeArgs)} value) =>
      $fieldIdentifier.append(value);
''';

  // Pointer<NativeType> is used as the value parameter's type since the getMany
  // function in IVector and IVectorView implementations also use it this way in
  // order to handle various types such as Pointer<Int32> and
  // Pointer<COMObject>.
  String vectorGetManyForwarder(String methodShortForm) => '''
  @override
  int getMany(int startIndex, int valueSize, Pointer<NativeType> value) =>
      $fieldIdentifier.$methodShortForm;
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

  String vectorReplaceAllForwarder() => '''
  @override
  void replaceAll(List<$typeArgs> value) => $fieldIdentifier.replaceAll(value);
''';

  String vectorSetAtForwarder() => '''
  @override
  void setAt(int index, ${stripQuestionMarkSuffix(typeArgs)} value) =>
      $fieldIdentifier.setAt(index, value);
''';

  /// Method forwarders for `IIterable`s `first()` and helper function `toMap()`.
  String mapPostamble() => '''
  @override
  IIterator<IKeyValuePair<$typeArgs>> first() => $fieldIdentifier.first();

  @override
  Map<$typeArgs> toMap() => $fieldIdentifier.toMap();
''';

  /// Method forwarders for `IIterable`s `first()` and helper function `toList()`.
  String vectorPostamble() => '''
  @override
  IIterator<$typeArgs> first() => $fieldIdentifier.first();

  @override
  List<$typeArgs> toList() => $fieldIdentifier.toList();
''';

  @override
  String toString() => methodProjections.isEmpty
      ? ''
      : '''
  // ${interface.shortName} methods
  late final $fieldIdentifier = $interfaceInstantiation

  ${methods.join('\n')}
''';
}
