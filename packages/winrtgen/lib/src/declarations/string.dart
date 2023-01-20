// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

class WinRTMethodReturningStringProjection extends WinRTMethodProjection {
  WinRTMethodReturningStringProjection(super.method, super.vtableOffset);

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

class WinRTGetPropertyReturningStringProjection
    extends WinRTGetPropertyProjection {
  WinRTGetPropertyReturningStringProjection(super.method, super.vtableOffset);

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

class WinRTSetPropertyReturningStringProjection
    extends WinRTSetPropertyProjection {
  WinRTSetPropertyReturningStringProjection(super.method, super.vtableOffset);

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
  WinRTStringParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => 'final ${name}HString = convertToHString($name);';

  @override
  String get postamble => 'WindowsDeleteString(${name}HString);';

  @override
  String get localIdentifier => '${name}HString';
}
