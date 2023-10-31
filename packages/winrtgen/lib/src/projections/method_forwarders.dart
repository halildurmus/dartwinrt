// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/attribute.dart';
import '../extensions/extensions.dart';
import 'class.dart';
import 'interface.dart';
import 'method.dart';
import 'type.dart';

final class MethodForwardersProjection {
  MethodForwardersProjection(this.interface, this.interfaceProjection);

  /// The interface typedef that method forwarders are generated from (e.g.,
  /// `Windows.Storage.IStorageItem`).
  final TypeDef interface;

  /// The interface projection that method forwarders are generated to (e.g.,
  /// `Windows.Storage.StorageFile`, `Windows.Storage.IStorageFile`).
  final InterfaceProjection interfaceProjection;

  /// Whether the [interface] is a generic interface.
  bool get isGenericInterface => interface.typeSpec?.isGenericType ?? false;

  /// The shorter [interface] name without type arguments (e.g., `IMap`,
  /// `ICalendar`).
  String get shortInterfaceName => interface.shortName.outerType;

  /// The type arguments of the [interface] (e.g., `String, String?`,
  /// `StorageFile`).
  String get typeArgs => interface.shortName.typeArguments;

  /// Private field identifier for the [interface] (e.g., `_iCalendar`).
  String get fieldIdentifier => '_i${shortInterfaceName.substring(1)}';

  /// The constructor arguments passed to the constructors of the [interface].
  String? get constructorArgs {
    if (!isGenericInterface) return null;

    final typeSpec = interface.typeSpec;
    if (typeSpec == null) {
      throw StateError('Type $interface has no typeSpec.');
    }

    final genericParams = typeSpec.type?.genericParams;
    if (genericParams == null) {
      throw StateError('Type $typeSpec has no type.');
    }

    final args = <String>{
      if (shortInterfaceName
          case 'IMap' || 'IMapView' || 'IVector' || 'IVectorView')
        'iterableIid: ${typeSpec.iterableIID.quote()}',
      if (typeSpec.typeArgs case [final typeArg1, final typeArg2]) ...{
        if (typeArg1.creator case final creator?)
          typeArg1.isWinRTEnum
              ? '${genericParams[0].name.toCamelCase()}EnumCreator: $creator'
              : '${genericParams[0].name.toCamelCase()}ObjectCreator: $creator'
        else if (TypeProjection(typeArg1).isDouble)
          '${genericParams[0].name.toCamelCase()}DoubleType: DoubleType.${TypeProjection(typeArg1).nativeType.toLowerCase()}'
        else if (TypeProjection(typeArg1).isInteger)
          '${genericParams[0].name.toCamelCase()}IntType: IntType.${TypeProjection(typeArg1).nativeType.toLowerCase()}',
        if (typeArg2.creator case final creator?)
          typeArg2.isWinRTEnum
              ? '${genericParams[1].name.toCamelCase()}EnumCreator: $creator'
              : '${genericParams[1].name.toCamelCase()}ObjectCreator: $creator'
        else if (TypeProjection(typeArg2).isDouble)
          '${genericParams[1].name.toCamelCase()}DoubleType: DoubleType.${TypeProjection(typeArg2).nativeType.toLowerCase()}'
        else if (TypeProjection(typeArg2).isInteger)
          '${genericParams[1].name.toCamelCase()}IntType: IntType.${TypeProjection(typeArg2).nativeType.toLowerCase()}',
      } else if (typeSpec.typeArgs case [final typeArg]) ...{
        if (typeArg.creator case final creator?)
          typeArg.isWinRTEnum
              ? '${genericParams[0].name.toCamelCase()}EnumCreator: $creator'
              : '${genericParams[0].name.toCamelCase()}ObjectCreator: $creator'
        else if (TypeProjection(typeArg).isDouble)
          '${genericParams[0].name.toCamelCase()}DoubleType: DoubleType.${TypeProjection(typeArg).nativeType.toLowerCase()}'
        else if (TypeProjection(typeArg).isInteger)
          '${genericParams[0].name.toCamelCase()}IntType: IntType.${TypeProjection(typeArg).nativeType.toLowerCase()}',
      },
    };

    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }

  String get interfaceInstantiation {
    if (!isGenericInterface) return '$shortInterfaceName.from(this);';
    final iid = interface.iid.quote();
    return '${interface.shortName}.fromPtr(toInterface($iid)$constructorArgs);';
  }

  /// Tries to find the method projections for the [interface] from the given
  /// [methodProjections] by comparing method names.
  List<MethodProjection> _methodProjectionsOfInterface(
      List<MethodProjection> methodProjections) {
    if (interface.typeSpec?.type case final type?) {
      return methodProjections
          .where((methodProjection) => type.methods
              .map((method) => method.name)
              .contains(methodProjection.name))
          .toList();
    }
    throw StateError('Type $interface has no TypeDef.');
  }

  List<MethodProjection>? _methodProjections;

  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  List<MethodProjection> _cacheMethodProjections() {
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
    if (interfaceProjection.typeDef
        .existsAttribute(Attribute.exclusiveTo.name)) {
      classTypeName = interfaceProjection.typeDef
          .findAttribute(Attribute.exclusiveTo.name)!
          .parameters
          .first
          .value
          .toString();
    } else {
      // Try using the interface name as a class name by removing the 'I' prefix
      classTypeName = (interfaceProjection.typeDef.name.split('.')
            ..removeLast() // Remove the shortName (e.g., IPropertySet)
            // Add shortName without 'I' prefix (e.g., PropertySet)
            ..add(interfaceProjection.shortName.substring(1)))
          .join('.');
    }

    final classProjection = ClassProjection.fromType(classTypeName);
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

      methods.add(defaultForwarder(methodProjection));
    }

    if (shortInterfaceName case 'IMap' || 'IMapView') {
      methods.addAll([
        mapFirstForwarder(),
        mapToMapForwarder(),
        mapSubscriptAccessOperatorForwarder(),
        if (shortInterfaceName == 'IMap')
          mapSubscriptAssignmentOperatorForwarder()
      ]);
    } else if (shortInterfaceName case 'IVector' || 'IVectorView') {
      methods.addAll([
        vectorFirstForwarder(),
        vectorToListForwarder(),
        vectorSubscriptAccessOperatorForwarder(),
        if (shortInterfaceName == 'IVector')
          vectorSubscriptAssignmentOperatorForwarder(),
        vectorAddOperatorForwarder()
      ]);
    }

    return methods;
  }

  String defaultForwarder(MethodProjection methodProjection) {
    // e.g., `int get Second` or `void addHours(int hours)`
    final methodHeader = methodProjection.header;
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
    final [keyType, valueType] = typeArgs.split(', ');
    return '''
  @override
  bool insert($keyType key, $valueType value) =>
      $fieldIdentifier.insert(key, value ?? JsonValue.createNullValue());
''';
  }

  String mapFirstForwarder() => '''
  @override
  IIterator<IKeyValuePair<$typeArgs>> first() => $fieldIdentifier.first();
''';

  String mapToMapForwarder() => '''
  @override
  Map<$typeArgs> toMap() => $fieldIdentifier.toMap();
''';

  String mapSubscriptAccessOperatorForwarder() {
    final [keyType, valueType] = typeArgs.split(', ');
    return '''
  @override
  $valueType operator []($keyType key) => $fieldIdentifier[key];
''';
  }

  String mapSubscriptAssignmentOperatorForwarder() {
    final [keyType, valueType] = typeArgs.split(', ');
    return '''
  @override
  void operator []=($keyType key, $valueType value) => $fieldIdentifier[key] = value;
''';
  }

  String vectorFirstForwarder() => '''
  @override
  IIterator<$typeArgs> first() => $fieldIdentifier.first();
''';

  String vectorToListForwarder() => '''
  @override
  List<$typeArgs> toList() => $fieldIdentifier.toList();
''';

  String vectorSubscriptAccessOperatorForwarder() => '''
  @override
  $typeArgs operator [](int index) => $fieldIdentifier[index];
''';

  String vectorSubscriptAssignmentOperatorForwarder() => '''
  @override
  void operator []=(int index, $typeArgs value) => $fieldIdentifier[index] = value;
''';

  String vectorAddOperatorForwarder() => '''
  @override
  List<$typeArgs> operator +(List<$typeArgs> other) => toList() + other;
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
