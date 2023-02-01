// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

/// Method projection for methods that return a WinRT delegate (e.g.
/// `AsyncActionCompletedHandler`).
class WinRTDelegateMethodProjection extends WinRTMethodProjection {
  WinRTDelegateMethodProjection(super.method, super.vtableOffset);

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

/// Getter projection for WinRT delegate getters.
class WinRTDelegateGetterProjection extends WinRTGetPropertyProjection {
  WinRTDelegateGetterProjection(super.method, super.vtableOffset);

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

/// Setter projection for WinRT delegate setters.
class WinRTDelegateSetterProjection extends WinRTSetPropertyProjection {
  WinRTDelegateSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameters.first.type.dartType} value) {
    ${ffiCall(params: 'value')}
  }
''';
}
