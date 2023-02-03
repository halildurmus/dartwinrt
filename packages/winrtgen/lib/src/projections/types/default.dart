// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

/// Default method projection for methods.
class DefaultMethodProjection extends MethodProjection {
  DefaultMethodProjection(super.method, super.vtableOffset);

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

/// Default getter projection for getters.
class DefaultGetterProjection extends GetterProjection {
  DefaultGetterProjection(super.method, super.vtableOffset);

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

/// Default setter projection for setters.
class DefaultSetterProjection extends SetterProjection {
  DefaultSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameters.first.type.dartType} value) {
    ${ffiCall(params: 'value')}
  }
''';
}

/// Default parameter projection for parameters.
class DefaultParameterProjection extends ParameterProjection {
  DefaultParameterProjection(super.parameter);

  @override
  String get preamble => '';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => identifier;
}
