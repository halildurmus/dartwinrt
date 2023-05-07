// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _DelegateMixin on MethodProjection {
  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<COMObject>();
    ${ffiCall(freeRetValOnFailure: true)}

    return retValuePtr;
  }
''';
}

/// Method projection for methods that return WinRT delegate (e.g.
/// `AsyncActionCompletedHandler`).
final class DelegateMethodProjection extends MethodProjection
    with _DelegateMixin {
  DelegateMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT delegate getters.
final class DelegateGetterProjection extends GetterProjection
    with _DelegateMixin {
  DelegateGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for WinRT delegate setters.
final class DelegateSetterProjection extends SetterProjection {
  DelegateSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value.ref.lpVtbl')}
  }
''';
}

/// Parameter projection for WinRT delegate parameters.
final class DelegateParameterProjection extends ParameterProjection {
  DelegateParameterProjection(super.parameter);

  @override
  String get type => 'Pointer<COMObject>';

  @override
  String get localIdentifier => '$identifier.ref.lpVtbl';
}
