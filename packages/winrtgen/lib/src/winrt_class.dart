// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'exclusions.dart';
import 'utils.dart';
import 'winrt_factory_interface_mapper.dart';
import 'winrt_interface.dart';
import 'winrt_static_interface_mapper.dart';

class WinRTClassProjection extends WinRTInterfaceProjection {
  WinRTClassProjection(super.typeDef, [super.comment]);

  // WinRTInterfaceProjection overrides

  @override
  String get category => 'class';

  @override
  Set<String> get interfaceImports => {
        ...super.interfaceImports,
        ...factoryInterfaces.map(fileNameFromWinRTType),
        ...staticInterfaces.map(fileNameFromWinRTType),
      };

  bool get isActivatable => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 2)
      .isNotEmpty;

  String get defaultConstructor =>
      isActivatable ? '$shortName() : super(activateClass(_className));' : '';

  String get classNameDeclaration =>
      (isActivatable || factoryMappers.isNotEmpty || staticMappers.isNotEmpty)
          ? "static const _className = '${typeDef.name}';"
          : '';

  List<String> get factoryInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..sort();

  List<WinRTFactoryInterfaceMapperProjection>? _factoryMappers;

  List<WinRTFactoryInterfaceMapperProjection> get factoryMappers =>
      _factoryMappers ??= _cacheFactoryMappers();

  List<WinRTFactoryInterfaceMapperProjection> _cacheFactoryMappers() =>
      factoryInterfaces
          .map((interface) =>
              WinRTFactoryInterfaceMapperProjection(typeDef, interface))
          .toList();

  List<String> get staticInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('StaticAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..removeWhere(excludedWindowsRuntimeStaticInterfaces.contains)
    ..sort();

  List<WinRTStaticInterfaceMapperProjection>? _staticMappers;

  List<WinRTStaticInterfaceMapperProjection> get staticMappers =>
      _staticMappers ??= _cacheStaticMappers();

  List<WinRTStaticInterfaceMapperProjection> _cacheStaticMappers() =>
      staticInterfaces
          .map((interface) =>
              WinRTStaticInterfaceMapperProjection(typeDef, interface))
          .toList();

  @override
  String toString() {
    return '''
      $header
      $importHeader

      $classPreamble
      $classDeclaration
        $defaultConstructor
        $shortName.fromRawPointer(super.ptr);

        $classNameDeclaration

        ${factoryMappers.join('\n')}
        ${staticMappers.join('\n')}
        ${implementsMappers.join('\n')}
      }
''';
  }
}
