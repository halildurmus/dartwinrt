// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import '../getter.dart';
import '../method.dart';
import '../parameter.dart';
import '../setter.dart';
import 'default.dart';

mixin _DateTimeMixin on MethodProjection {
  @override
  String get returnType => 'DateTime';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final retValuePtr = calloc<${returnTypeProjection.nativeType}>();

    try {
      ${ffiCall()}

      return retValuePtr.toDartDateTime();
    } finally {
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `DateTime`.
final class DateTimeMethodProjection extends MethodProjection
    with _DateTimeMixin {
  DateTimeMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `DateTime` getters.
final class DateTimeGetterProjection extends GetterProjection
    with _DateTimeMixin {
  DateTimeGetterProjection(super.method, super.vtableOffset);
}

/// Method projection for methods that return `List<DateTime>`.
final class DateTimeListMethodProjection extends DefaultListMethodProjection {
  DateTimeListMethodProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<DateTime>';

  @override
  String get returnStatement => '''
return retValuePtr.value
  .toList(length: $sizeIdentifier.value)
  .map((value) => DateTime.utc(1601, 01, 01).add(Duration(microseconds: value ~/ 10)));''';
}

/// Getter projection for `List<DateTime>` getters.
final class DateTimeListGetterProjection extends DefaultListGetterProjection {
  DateTimeListGetterProjection(super.method, super.vtableOffset);

  @override
  String get returnType => 'List<DateTime>';

  @override
  String get returnStatement => '''
return retValuePtr.value
  .toList(length: $sizeIdentifier.value)
  .map((value) => DateTime.utc(1601, 01, 01).add(Duration(microseconds: value ~/ 10)));''';
}

/// Setter projection for `DateTime` setters.
final class DateTimeSetterProjection extends SetterProjection {
  DateTimeSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value.toWinRTDateTime()')}
  }
''';
}

/// Parameter projection for `DateTime` parameters.
final class DateTimeParameterProjection extends ParameterProjection {
  DateTimeParameterProjection(super.parameter);

  @override
  String get type => 'DateTime';

  @override
  String get localIdentifier => '$identifier.toWinRTDateTime()';
}

/// Parameter projection for `List<DateTime>` parameters.
final class DateTimeListParameterProjection
    extends DefaultListParameterProjection {
  DateTimeListParameterProjection(super.parameter);

  @override
  String get type => 'List<DateTime>';

  @override
  String get passArrayPreamble => '''
    final $localIdentifier = calloc<Int64>($paramName.length);
    for (var i = 0; i < $paramName.length; i++) {
      $localIdentifier[i] = $paramName.elementAt(i).toWinRTDateTime();
    }''';

  @override
  String get fillArrayPostamble => '''
    if ($fillArraySizeVariable > 0) {
      $paramName.addAll($localIdentifier
          .toList(length: $fillArraySizeVariable)
          .map((value) => value.toDartDateTime()));
    }
    free($localIdentifier);''';

  @override
  String get receiveArrayPostamble => '''
    if ($sizeIdentifier.value > 0) {
      $paramName.addAll($localIdentifier.value
          .toList(length: $sizeIdentifier.value)
          .map((value) => value.toDartDateTime()));
    }
    free($sizeIdentifier);
    free($localIdentifier);''';
}
