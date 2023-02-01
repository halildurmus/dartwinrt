// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

/// Method projection for methods that return a WinRT enum (e.g. `AsyncStatus`).
class WinRTEnumMethodProjection extends WinRTMethodProjection {
  WinRTEnumMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  ${returnType.exposedType} $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnType.nativeType}>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return ${returnType.exposedType}.from(retValuePtr.value);
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Getter projection for WinRT enum getters.
class WinRTEnumGetterProjection extends WinRTGetPropertyProjection {
  WinRTEnumGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  ${returnType.exposedType} get $camelCasedName {
    final retValuePtr = calloc<${returnType.nativeType}>();

    try {
      ${ffiCall()}

      return ${returnType.exposedType}.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Setter projection for WinRT enum setters.
class WinRTEnumSetterProjection extends WinRTSetPropertyProjection {
  WinRTEnumSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameters.first.type.exposedType} value) {
    ${ffiCall(params: 'value.value')}
  }
''';
}

/// Parameter projection for WinRT enum parameters.
class WinRTEnumParameterProjection extends WinRTParameterProjection {
  WinRTEnumParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '$identifier.value';
}
