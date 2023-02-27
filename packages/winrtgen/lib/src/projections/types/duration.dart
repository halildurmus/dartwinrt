// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _DurationMixin on MethodProjection {
  @override
  String get returnType => 'Duration';

  @override
  String get methodDeclaration => '''
  $methodHeader {
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

/// Method projection for methods that return `Duration`.
class DurationMethodProjection extends MethodProjection with _DurationMixin {
  DurationMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `Duration` getters.
class DurationGetterProjection extends GetterProjection with _DurationMixin {
  DurationGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `Duration` setters.
class DurationSetterProjection extends SetterProjection {
  DurationSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
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

/// Parameter projection for `List<Duration>` parameters.
class DurationListParameterProjection extends DefaultListParameterProjection {
  DurationListParameterProjection(super.parameter);

  @override
  String get type => 'List<Duration>';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<Uint64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).inMicroseconds * 10;
    }''';

  @override
  String get fillArrayPostamble => '''
    if (retValuePtr.value > 0) {
      value.addAll(pArray
          .toList(length: value.length)
          .map((value) => Duration(microseconds: value ~/ 10)));
    }
    free(pArray);''';

  @override
  String get receiveArrayPostamble => '''
    value.addAll(pArray.value
        .toList(length: pValueSize.value)
        .map((value) => Duration(microseconds: value ~/ 10)));
    free(pValueSize);
    free(pArray);''';
}
