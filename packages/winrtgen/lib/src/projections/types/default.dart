// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

/// Default method projection for methods.
class WinRTDefaultMethodProjection extends WinRTMethodProjection {
  WinRTDefaultMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  ${returnType.dartType} $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnType.nativeType}>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.value;
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Default getter projection for getters.
class WinRTDefaultGetterProjection extends WinRTGetPropertyProjection {
  WinRTDefaultGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  ${returnType.dartType} get $camelCasedName {
    final retValuePtr = calloc<${returnType.nativeType}>();

    try {
      ${ffiCall()}

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Default setter projection for setters.
class WinRTDefaultSetterProjection extends WinRTSetPropertyProjection {
  WinRTDefaultSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameters.first.type.dartType} value) {
    ${ffiCall(params: 'value')}
  }
''';
}

/// Default parameter projection for parameters.
class WinRTDefaultParameterProjection extends WinRTParameterProjection {
  WinRTDefaultParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => identifier;
}
