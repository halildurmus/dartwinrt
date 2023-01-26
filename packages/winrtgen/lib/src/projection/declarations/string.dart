// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

class WinRTStringMethodProjection extends WinRTMethodProjection {
  WinRTStringMethodProjection(WinRTMethodProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() {
    final overrideAnnotation = camelCasedName == 'toString' ? '@override' : '';
    return '''
  $overrideAnnotation
  String $camelCasedName($methodParams) {
    final retValuePtr = calloc<HSTRING>();
    $parametersPreamble

    try {
      ${ffiCall()}

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      $parametersPostamble
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
''';
  }
}

class WinRTStringGetterProjection extends WinRTGetPropertyProjection {
  WinRTStringGetterProjection(WinRTGetPropertyProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  String get $exposedMethodName {
    final retValuePtr = calloc<HSTRING>();

    try {
      ${ffiCall()}

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
''';
}

class WinRTStringSetterProjection extends WinRTSetPropertyProjection {
  WinRTStringSetterProjection(WinRTSetPropertyProjection projection)
      : super(projection.method, projection.vtableOffset);

  @override
  String toString() => '''
  set $exposedMethodName(String value) {
    final hstr = convertToHString(value);

    try {
      ${ffiCall(params: 'hstr')}
    } finally {
      WindowsDeleteString(hstr);
    }
  }
''';
}

class WinRTStringParameterProjection extends WinRTParameterProjection {
  WinRTStringParameterProjection(WinRTParameterProjection projection)
      : super(projection.method, projection.name, projection.type);

  @override
  String get preamble => 'final ${name}HString = convertToHString($name);';

  @override
  String get postamble => 'WindowsDeleteString(${name}HString);';

  @override
  String get localIdentifier => '${name}HString';
}
