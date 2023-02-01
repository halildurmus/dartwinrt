// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_parameter.dart';
import '../winrt_set_property.dart';

/// Method projection for methods that return a `Duration`.
class WinRTDurationMethodProjection extends WinRTMethodProjection {
  WinRTDurationMethodProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Duration $camelCasedName($methodParams) {
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
class WinRTDurationGetterProjection extends WinRTGetPropertyProjection {
  WinRTDurationGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  Duration get $camelCasedName {
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
class WinRTDurationSetterProjection extends WinRTSetPropertyProjection {
  WinRTDurationSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(Duration value) {
    final duration = value.inMicroseconds * 10;

    ${ffiCall(params: 'duration')}
  }
''';
}

/// Parameter projection for `Duration` parameters.
class WinRTDurationParameterProjection extends WinRTParameterProjection {
  WinRTDurationParameterProjection(super.method, super.name, super.type);

  @override
  String get preamble => 'final ${name}Duration = $name.inMicroseconds * 10;';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '${name}Duration';
}
