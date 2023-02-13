// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';

mixin _DurationProjection on MethodProjection {
  @override
  String get returnType => 'Duration';
}

/// Method projection for methods that return a `Duration`.
class DurationMethodProjection extends MethodProjection
    with _DurationProjection {
  DurationMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<Uint64>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Getter projection for `Duration` getters.
class DurationGetterProjection extends GetterProjection
    with _DurationProjection {
  DurationGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<Uint64>();

    try {
      ${ffiCall()}

      return Duration(microseconds: retValuePtr.value ~/ 10);
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Setter projection for `Duration` setters.
class DurationSetterProjection extends SetterProjection {
  DurationSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type} value) {
    final duration = value.inMicroseconds * 10;

    ${ffiCall(params: 'duration')}
  }
''';
}

/// Parameter projection for `Duration` parameters.
class DurationParameterProjection extends ParameterProjection {
  DurationParameterProjection(super.parameter);

  @override
  String get type => 'Duration';

  @override
  String get preamble => 'final ${name}Duration = $name.inMicroseconds * 10;';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '${name}Duration';
}
