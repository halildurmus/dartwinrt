// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:winmd/winmd.dart';

import '../constants/constants.dart';
import '../utils.dart';
import 'winrt_factory_constructors.dart';
import 'winrt_interface.dart';
import 'winrt_static_methods.dart';

class WinRTClassProjection extends WinRTInterfaceProjection {
  WinRTClassProjection(super.typeDef, {super.comment});

  /// Attempts to create a [WinRTClassProjection] from
  /// [fullyQualifiedTypeName] by searching its [TypeDef].
  ///
  /// Throws an [Exception] if no [TypeDef] matching [fullyQualifiedTypeName]
  /// is found.
  factory WinRTClassProjection.from(String fullyQualifiedTypeName,
      [String comment = '']) {
    final typeDef = MetadataStore.getMetadataForType(fullyQualifiedTypeName);
    if (typeDef == null) throw Exception("Can't find $fullyQualifiedTypeName");

    return WinRTClassProjection(typeDef, comment: comment);
  }

  // WinRTInterfaceProjection overrides

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

  List<WinRTFactoryConstructorsProjection>? _factoryConstructors;

  List<WinRTFactoryConstructorsProjection> get factoryConstructors =>
      _factoryConstructors ??= _cacheFactoryConstructors();

  List<WinRTFactoryConstructorsProjection> _cacheFactoryConstructors() =>
      factoryInterfaces.map(WinRTFactoryConstructorsProjection.new).toList();

  List<String> get staticInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('StaticAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..removeWhere(excludedWindowsRuntimeStaticInterfaces.contains)
    ..sort();

  List<WinRTStaticMethodsProjection>? _staticMethods;

  List<WinRTStaticMethodsProjection> get staticMethods =>
      _staticMethods ??= _cacheStaticMethods();

  List<WinRTStaticMethodsProjection> _cacheStaticMethods() =>
      staticInterfaces.map(WinRTStaticMethodsProjection.new).toList();

  @override
  String toString() => '''
$header
$importHeader

$classPreamble
$classDeclaration
  $defaultConstructor
  $namedConstructor

  $classNameVariable

  ${factoryConstructors.join('\n')}
  ${staticMethods.join('\n')}
  ${methodForwarders.join('\n')}
}
''';
}
