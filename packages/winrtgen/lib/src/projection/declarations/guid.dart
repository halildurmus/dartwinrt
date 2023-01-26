// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

class WinRTGuidMethodProjection extends WinRTMethodProjection {
  WinRTGuidMethodProjection(WinRTMethodProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  Guid $camelCasedName($methodParams) {
    final retValuePtr = calloc<GUID>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.toDartGuid();
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

class WinRTGuidGetterProjection extends WinRTGetPropertyProjection {
  WinRTGuidGetterProjection(WinRTGetPropertyProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  Guid get $exposedMethodName {
    final retValuePtr = calloc<GUID>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartGuid();
    } finally {
      free(retValuePtr);
    }
  }
''';
}

class WinRTGuidSetterProjection extends WinRTSetPropertyProjection {
  WinRTGuidSetterProjection(WinRTSetPropertyProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  set $exposedMethodName(Guid value) {
    final nativeGuidPtr = value.toNativeGUID();

    try {
      ${ffiCall(params: 'nativeGuidPtr.ref')}
    } finally {
      free(nativeGuidPtr);
    }
  }
''';
}

class WinRTGuidParameterProjection extends WinRTParameterProjection {
  WinRTGuidParameterProjection(WinRTParameterProjection projection)
      : super(projection.method, projection.name, projection.type);

  @override
  String get preamble => 'final ${name}NativeGuidPtr = $name.toNativeGUID();';

  @override
  String get postamble => 'free(${name}NativeGuidPtr);';

  @override
  String get localIdentifier => '${name}NativeGuidPtr.ref';
}
