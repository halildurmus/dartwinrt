// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utilities/utilities.dart';
import 'interface.dart';
import 'method.dart';

class ClassProjection extends InterfaceProjection {
  ClassProjection(super.typeDef, {super.comment});

  /// Attempts to create a [ClassProjection] from [fullyQualifiedType] by
  /// searching its [TypeDef].
  ///
  /// ```dart
  /// final projection =
  ///    ClassProjection.from('Windows.Storage.Pickers.FileOpenPicker');
  /// ```
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedType] is
  /// found.
  factory ClassProjection.from(String fullyQualifiedType,
      {String comment = ''}) {
    try {
      final typeDef = getMetadataForType(fullyQualifiedType);
      return ClassProjection(typeDef, comment: comment);
    } catch (_) {
      print('Failed to project class "$fullyQualifiedType".');
      rethrow;
    }
  }

  // InterfaceProjection overrides

  @override
  Set<String> get interfaceImports => {
        ...super.interfaceImports,
        ...factoryInterfaces.map(fileNameFromType),
        ...staticInterfaces.map(fileNameFromType),
      };

  /// Whether the class is an activatable runtime class.
  bool get isActivatable => typeDef.customAttributes
      .where((attribute) => attribute.name == activatableAttribute)
      .where((attribute) => attribute.parameters.length == 2)
      .isNotEmpty;

  String get defaultConstructor =>
      isActivatable ? '$shortName() : super(activateClass(_className));' : '';

  String get classNameVariable => (isActivatable ||
          factoryInterfaces.isNotEmpty ||
          staticInterfaces.isNotEmpty)
      ? 'static const _className = ${quote(typeDef.name)};'
      : '';

  List<String> get factoryInterfaces => typeDef.customAttributes
      .where((attribute) => attribute.name == activatableAttribute)
      .where((attribute) => attribute.parameters.length == 3)
      .map((attribute) => attribute.parameters.first.value as String)
      .toList()
    ..sort();

  List<FactoryConstructorProjection>? _factoryConstructors;

  List<FactoryConstructorProjection> get factoryConstructors =>
      _factoryConstructors ??= _cacheFactoryConstructors();

  List<FactoryConstructorProjection> _cacheFactoryConstructors() => [
        for (final interface in factoryInterfaces)
          ...InterfaceProjection.from(interface)
              .methodProjections
              .map(FactoryConstructorProjection.new)
      ];

  List<String> get staticInterfaces => typeDef.customAttributes
      .where((attribute) => attribute.name == staticAttribute)
      .where((attribute) => attribute.parameters.length == 3)
      .map((attribute) => attribute.parameters.first.value as String)
      .toList()
    ..removeWhere(excludedStaticInterfaces.contains)
    ..sort();

  List<StaticMethodProjection>? _staticMethods;

  List<StaticMethodProjection> get staticMethods =>
      _staticMethods ??= _cacheStaticMethods();

  List<StaticMethodProjection> _cacheStaticMethods() => [
        for (final interface in staticInterfaces)
          ...InterfaceProjection.from(interface)
              .methodProjections
              .map(StaticMethodProjection.new)
      ];

  @override
  String toString() => '''
$header
$importHeader

$classPreamble
$classHeader {
  $defaultConstructor
  $namedConstructor

  $classNameVariable

  ${factoryConstructors.join('\n')}
  ${staticMethods.join('\n')}
  ${methodForwarders.join('\n')}
}
''';
}

final class FactoryConstructorProjection {
  FactoryConstructorProjection(this.method)
      : className = method.methodHeader.split(' ').first,
        shortName = method.method.parent.shortName;

  final MethodProjection method;
  final String className;
  final String shortName;

  @override
  String toString() => '''
  factory $className.${method.camelCasedName}(${method.methodParams}) =>
      createActivationFactory(
              $shortName.fromPtr, _className, IID_$shortName)
          .${method.shortForm};
''';
}

final class StaticMethodProjection {
  StaticMethodProjection(this.method)
      : shortName = method.method.parent.shortName;

  final MethodProjection method;
  final String shortName;

  @override
  String toString() {
    final deprecatedAnnotation =
        method.method.isDeprecated ? method.method.deprecatedAnnotation : null;
    return [
      if (deprecatedAnnotation != null) deprecatedAnnotation,
      '''
  static ${method.methodHeader} =>
      createActivationFactory(
              $shortName.fromPtr, _className, IID_$shortName)
          .${method.shortForm};
'''
    ].join('\n');
  }
}
