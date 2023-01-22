// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

mixin _ObjectProjection on WinRTMethodProjection {
  String get nullCheck => '''
    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }''';

  String get returnStatement =>
      'return IPropertyValue.fromRawPointer(retValuePtr).value;';
}

class WinRTObjectMethodProjection extends WinRTMethodProjection
    with _ObjectProjection {
  WinRTObjectMethodProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Object? $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        $parametersPostamble

        $nullCheck

        $returnStatement
      }
''';
}

class WinRTObjectGetterProjection extends WinRTGetPropertyProjection
    with _ObjectProjection {
  WinRTObjectGetterProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Object? get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        $nullCheck

        $returnStatement
      }
''';
}

class WinRTObjectSetterProjection extends WinRTSetPropertyProjection
    with _ObjectProjection {
  WinRTObjectSetterProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(Object? value) {
        ${ffiCall(params: 'value == null ? nullptr : boxValue(value).ref.lpVtbl')}
      }
  ''';
}

class WinRTObjectParameterProjection extends WinRTParameterProjection {
  WinRTObjectParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier =>
      '$name == null ? nullptr : boxValue($name).ref.lpVtbl';
}
