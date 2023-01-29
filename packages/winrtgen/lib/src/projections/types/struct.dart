// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

class WinRTStructMethodProjection extends WinRTMethodProjection {
  WinRTStructMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  ${returnType.dartType} $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnType.nativeType}>();
    $parametersPreamble

    ${ffiCall()}

    return retValuePtr.ref;
  }
''';
}

class WinRTStructGetterProjection extends WinRTGetPropertyProjection {
  WinRTStructGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  ${returnType.dartType} get $exposedMethodName {
    final retValuePtr = calloc<${returnType.nativeType}>();

    ${ffiCall()}

    return retValuePtr.ref;
  }
''';
}

class WinRTStructSetterProjection extends WinRTSetPropertyProjection {
  WinRTStructSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $exposedMethodName(${parameters.first.type.dartType} value) {
    ${ffiCall(params: 'value')}
  }
''';
}
