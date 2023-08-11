// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../extensions/extensions.dart';
import 'interface.dart';
import 'method.dart';

base class ClassProjection extends InterfaceProjection {
  ClassProjection(super.typeDef, {super.comment});

  /// Attempts to create a [ClassProjection] from [type] by searching its
  /// [TypeDef].
  ///
  /// ```dart
  /// final projection =
  ///     ClassProjection.fromType('Windows.Storage.Pickers.FileOpenPicker');
  /// ```
  factory ClassProjection.fromType(String type, {String comment = ''}) =>
      ClassProjection(type.typeDef, comment: comment);

  // InterfaceProjection overrides

  @override
  Set<String> get interfaceImports => {
        ...super.interfaceImports,
        ...factoryInterfaces.map((interface) => interface.toFileName()),
        ...staticInterfaces.map((interface) => interface.toFileName()),
      };

  /// Whether the class is an activatable runtime class.
  bool get isActivatableWithNoParams => typeDef.customAttributes
      .where((attribute) => attribute.name == Attribute.activatable.name)
      .where((attribute) => attribute.parameters.length == 2)
      .isNotEmpty;

  @override
  String get constructor => isActivatableWithNoParams
      ? '$shortName() : super(activateClass(_className));'
      : '';

  String get classNameConstant => (isActivatableWithNoParams ||
          factoryInterfaces.isNotEmpty ||
          staticInterfaces.isNotEmpty)
      ? 'static const _className = ${typeDef.name.quote()};'
      : '';

  List<String>? _factoryInterfaces;

  List<String> get factoryInterfaces =>
      _factoryInterfaces ??= _cacheFactoryInterfaces();

  List<String> _cacheFactoryInterfaces() => typeDef.customAttributes
      .where((attribute) => attribute.name == Attribute.activatable.name)
      .where((attribute) => attribute.parameters.length == 3)
      .map((attribute) => attribute.parameters.first.value as String)
      .toList()
    ..sort();

  List<FactoryConstructorProjection>? _factoryConstructors;

  List<FactoryConstructorProjection> get factoryConstructors =>
      _factoryConstructors ??= _cacheFactoryConstructors();

  List<FactoryConstructorProjection> _cacheFactoryConstructors() => [
        for (final interface in factoryInterfaces)
          ...InterfaceProjection.fromType(interface)
              .methodProjections
              .map(FactoryConstructorProjection.new)
      ];

  List<String>? _staticInterfaces;

  List<String> get staticInterfaces =>
      _staticInterfaces ??= _cacheStaticInterfaces();

  List<String> _cacheStaticInterfaces() => typeDef.customAttributes
      .where((attribute) => attribute.name == Attribute.static.name)
      .where((attribute) => attribute.parameters.length == 3)
      .map((attribute) => attribute.parameters.first.value as String)
      .toList()
    ..removeWhere(Exclusion.excludedStaticInterfaces.contains)
    ..sort();

  List<StaticMethodProjection>? _staticMethods;

  List<StaticMethodProjection> get staticMethods =>
      _staticMethods ??= _cacheStaticMethods();

  List<StaticMethodProjection> _cacheStaticMethods() => [
        for (final interface in staticInterfaces)
          ...InterfaceProjection.fromType(interface)
              .methodProjections
              .map(StaticMethodProjection.new)
      ];

  @override
  String get projection => '''
$header
$importHeader

$classPreamble
$classHeader {
  $constructor
  $namedConstructor

  $classNameConstant

  ${factoryConstructors.join('\n')}
  ${staticMethods.join('\n')}
  ${methodForwarders.join('\n')}
}
''';
}

final class FactoryConstructorProjection {
  FactoryConstructorProjection(this.methodProjection);

  final MethodProjection methodProjection;

  String get className => methodProjection.header.split(' ').first;

  String get shortName => methodProjection.method.parent.shortName;

  @override
  String toString() {
    final MethodProjection(:camelCasedName, :methodParams, :shortForm) =
        methodProjection;
    return '''
  factory $className.$camelCasedName($methodParams) =>
      createActivationFactory($shortName.fromPtr, _className, IID_$shortName).$shortForm;
''';
  }
}

final class StaticMethodProjection {
  StaticMethodProjection(this.methodProjection);

  final MethodProjection methodProjection;

  String get shortName => methodProjection.method.parent.shortName;

  @override
  String toString() {
    final MethodProjection(:header, :method, :shortForm) = methodProjection;
    final deprecatedAnnotation =
        method.isDeprecated ? method.deprecatedAnnotation : null;
    return [
      if (deprecatedAnnotation != null) deprecatedAnnotation,
      '''
    static $header => createActivationFactory($shortName.fromPtr, _className, IID_$shortName).$shortForm;
'''
    ].join('\n');
  }
}
