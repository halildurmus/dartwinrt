// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _StructMixin on MethodProjection {
  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();
    $parametersPreamble

    ${ffiCall()}

    return retValuePtr.ref;
  }
''';
}

/// Method projection for methods that return WinRT struct (e.g. `Point`).
class StructMethodProjection extends MethodProjection with _StructMixin {
  StructMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for WinRT struct getters.
class StructGetterProjection extends GetterProjection with _StructMixin {
  StructGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for WinRT struct setters.
class StructSetterProjection extends SetterProjection {
  StructSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(params: 'value')}
  }
''';
}

/// Parameter projection for WinRT struct parameters.
class StructParameterProjection extends ParameterProjection {
  StructParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => identifier;
}
