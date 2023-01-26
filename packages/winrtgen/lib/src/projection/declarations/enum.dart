// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

class WinRTEnumMethodProjection extends WinRTMethodProjection {
  WinRTEnumMethodProjection(WinRTMethodProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  ${returnType.methodParamType} $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnType.nativeType}>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return ${returnType.methodParamType}.from(retValuePtr.value);
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

class WinRTEnumGetterProjection extends WinRTGetPropertyProjection {
  WinRTEnumGetterProjection(WinRTGetPropertyProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  ${returnType.methodParamType} get $exposedMethodName {
    final retValuePtr = calloc<${returnType.nativeType}>();

    try {
      ${ffiCall()}

      return ${returnType.methodParamType}.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
''';
}

class WinRTEnumSetterProjection extends WinRTSetPropertyProjection {
  WinRTEnumSetterProjection(WinRTSetPropertyProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  set $exposedMethodName(${parameters.first.type.methodParamType} value) {
    ${ffiCall(params: 'value.value')}
  }
''';
}

class WinRTEnumParameterProjection extends WinRTParameterProjection {
  WinRTEnumParameterProjection(WinRTParameterProjection projection)
      : super(projection.method, projection.name, projection.type);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '$identifier.value';
}
