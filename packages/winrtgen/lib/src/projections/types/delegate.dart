// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../setter.dart';

/// Method projection for methods that return a WinRT delegate (e.g.
/// `AsyncActionCompletedHandler`).
class DelegateMethodProjection extends MethodProjection {
  DelegateMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();
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
class DelegateGetterProjection extends GetterProjection {
  DelegateGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

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
class DelegateSetterProjection extends SetterProjection {
  DelegateSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type} value) {
    ${ffiCall(params: 'value')}
  }
''';
}
