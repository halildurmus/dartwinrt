// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

class WinRTStringMethodProjection extends WinRTMethodProjection {
  WinRTStringMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection {
    final overrideAnnotation = camelCasedName == 'toString' ? '@override' : '';
    return '''
  $overrideAnnotation
  String $camelCasedName($methodParams) {
    final retValuePtr = calloc<HSTRING>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return retValuePtr.toDartString();
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
  WinRTStringGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  String get $exposedMethodName {
    final retValuePtr = calloc<HSTRING>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
''';
}

class WinRTStringSetterProjection extends WinRTSetPropertyProjection {
  WinRTStringSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
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
  WinRTStringParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => 'final ${name}HString = convertToHString($name);';

  @override
  String get postamble => 'WindowsDeleteString(${name}HString);';

  @override
  String get localIdentifier => '${name}HString';
}
