// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _DateTimeProjection on MethodProjection {
  @override
  String get returnType => 'DateTime';
}

/// Method projection for methods that return a `DateTime`.
class DateTimeMethodProjection extends MethodProjection
    with _DateTimeProjection {
  DateTimeMethodProjection(super.method, super.vtableOffset);

  // In WinRT, DateTime is represented as a 64-bit signed integer that
  // represents a point in time as the number of 100-nanosecond intervals prior
  // to or after midnight on January 1, 1601 (according to the Gregorian
  // Calendar).
  @override
  String get methodProjection => '''
  $returnType $camelCasedName($methodParams) {
    final retValuePtr = calloc<Uint64>();
    $parametersPreamble

    try {
      ${ffiCall()}

      return DateTime.utc(1601, 01, 01)
          .add(Duration(microseconds: retValuePtr.value ~/ 10));
    } finally {
      $parametersPostamble
      free(retValuePtr);
    }
  }
''';
}

/// Getter projection for `DateTime` getters.
class DateTimeGetterProjection extends GetterProjection
    with _DateTimeProjection {
  DateTimeGetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  $returnType get $camelCasedName {
    final retValuePtr = calloc<Uint64>();

    try {
      ${ffiCall()}

      return DateTime.utc(1601, 01, 01)
          .add(Duration(microseconds: retValuePtr.value ~/ 10));
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Setter projection for `DateTime` setters.
class DateTimeSetterProjection extends SetterProjection {
  DateTimeSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodProjection => '''
  set $camelCasedName(${parameter.type} value) {
    final dateTimeOffset =
        value.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;

    ${ffiCall(params: 'dateTimeOffset')}
  }
''';
}

/// Parameter projection for `DateTime` parameters.
class DateTimeParameterProjection extends ParameterProjection {
  DateTimeParameterProjection(super.parameter);

  @override
  String get type => 'DateTime';

  @override
  String get preamble => '''
  final ${name}DateTime =
      $name.difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;''';

  @override
  String get postamble => '';

  @override
  String get localIdentifier => '${name}DateTime';
}

/// Parameter projection for `List<DateTime>` parameters.
class DateTimeListParameterProjection extends DefaultListParameterProjection {
  DateTimeListParameterProjection(super.parameter);

  @override
  String get type => 'List<DateTime>';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<Uint64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i)
          .difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
    }
''';

  @override
  String get fillArrayPostamble => '''
    value.addAll(pArray.toList(length: value.length).map((value) =>
        DateTime.utc(1601, 01, 01).add(Duration(microseconds: value ~/ 10))));
    free(pArray);
''';

  @override
  String get receiveArrayPostamble => '''
    value.addAll(pArray.value.toList(length: pValueSize.value).map((value) =>
        DateTime.utc(1601, 01, 01).add(Duration(microseconds: value ~/ 10))));
    free(pValueSize);
    free(pArray);
''';
}
