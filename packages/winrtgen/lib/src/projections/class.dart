// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utils.dart';
import 'factory_constructors.dart';
import 'interface.dart';
import 'static_methods.dart';

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
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedType);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedType");
    return ClassProjection(typeDef, comment: comment);
  }

  // InterfaceProjection overrides

  @override
  String get category => 'class';

  @override
  Set<String> get interfaceImports => {
        ...super.interfaceImports,
        ...factoryInterfaces.map(fileNameFromType),
        ...staticInterfaces.map(fileNameFromType),
      };

  bool get isActivatable => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 2)
      .isNotEmpty;

  String get defaultConstructor =>
      isActivatable ? '$shortName() : super(activateClass(_className));' : '';

  String get classNameVariable => (isActivatable ||
          factoryInterfaces.isNotEmpty ||
          staticInterfaces.isNotEmpty)
      ? "static const _className = '${typeDef.name}';"
      : '';

  List<String> get factoryInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..sort();

  List<FactoryConstructorsProjection>? _factoryConstructors;

  List<FactoryConstructorsProjection> get factoryConstructors =>
      _factoryConstructors ??= _cacheFactoryConstructors();

  List<FactoryConstructorsProjection> _cacheFactoryConstructors() =>
      factoryInterfaces.map(FactoryConstructorsProjection.new).toList();

  List<String> get staticInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('StaticAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..removeWhere(excludedStaticInterfaces.contains)
    ..sort();

  List<StaticMethodsProjection>? _staticMethods;

  List<StaticMethodsProjection> get staticMethods =>
      _staticMethods ??= _cacheStaticMethods();

  List<StaticMethodsProjection> _cacheStaticMethods() =>
      staticInterfaces.map(StaticMethodsProjection.new).toList();

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
