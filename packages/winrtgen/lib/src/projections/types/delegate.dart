// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

/// Method projection for methods that return WinRT delegate (e.g.
/// `AsyncActionCompletedHandler`).
class DelegateMethodProjection extends MethodProjection {
  DelegateMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($parameters) {
    final retValuePtr = calloc<COMObject>();
    $parametersPreamble

    ${ffiCall(freeRetValOnFailure: true)}

    $parametersPostamble

    return retValuePtr;
  }
''';
}

/// Getter projection for WinRT delegate getters.
class DelegateGetterProjection extends GetterProjection {
  DelegateGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<COMObject>();

    ${ffiCall(freeRetValOnFailure: true)}

    return retValuePtr;
  }
''';
}

/// Setter projection for WinRT delegate setters.
class DelegateSetterProjection extends SetterProjection {
  DelegateSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${param.type} value) {
    ${ffiCall(params: 'value.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for WinRT delegate parameters.
class DelegateParameterProjection extends ParameterProjection {
  DelegateParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '$identifier.ref.lpVtbl';
}
