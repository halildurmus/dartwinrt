// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
class DateTimeMethodProjection extends MethodProjection with _DateTimeMixin {
  DateTimeMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `DateTime` getters.
class DateTimeGetterProjection extends GetterProjection with _DateTimeMixin {
  DateTimeGetterProjection(super.method, super.vtableOffset);
}

mixin _DateTimeListMixin on MethodProjection {
  @override
  String get returnType => 'List<DateTime>';

  @override
  String get methodDeclaration => '''
  $methodHeader {
    final pValueSize = calloc<Uint32>();
    final retValuePtr = calloc<Pointer<Uint64>>();

    try {
      ${ffiCall()}

      return retValuePtr.value.toList(length: pValueSize.value).map((value) =>
          DateTime.utc(1601, 01, 01).add(Duration(microseconds: value ~/ 10)));
    } finally {
      free(pValueSize);
      free(retValuePtr);
    }
  }
''';
}

/// Method projection for methods that return `List<DateTime>`.
class DateTimeListMethodProjection extends MethodProjection
    with _DateTimeListMixin {
  DateTimeListMethodProjection(super.method, super.vtableOffset);
}

/// Getter projection for `List<DateTime>` getters.
class DateTimeListGetterProjection extends GetterProjection
    with _DateTimeListMixin {
  DateTimeListGetterProjection(super.method, super.vtableOffset);
}

/// Setter projection for `DateTime` setters.
class DateTimeSetterProjection extends SetterProjection {
  DateTimeSetterProjection(super.method, super.vtableOffset);

  @override
  String get methodDeclaration => '''
  $methodHeader {
    ${ffiCall(identifier: 'value.toWinRTDateTime()')}
  }
''';
}

/// Parameter projection for `DateTime` parameters.
class DateTimeParameterProjection extends ParameterProjection {
  DateTimeParameterProjection(super.parameter);

  @override
  String get type => 'DateTime';

  @override
  String get localIdentifier => '$identifier.toWinRTDateTime()';
}

/// Parameter projection for `List<DateTime>` parameters.
class DateTimeListParameterProjection extends DefaultListParameterProjection {
  DateTimeListParameterProjection(super.parameter);

  @override
  String get type => 'List<DateTime>';

  @override
  String get passArrayPreamble => '''
    final pArray = calloc<Int64>(value.length);
    for (var i = 0; i < value.length; i++) {
      pArray[i] = value.elementAt(i).toWinRTDateTime();
    }''';

  @override
  String get fillArrayPostamble => '''
    if (retValuePtr.value > 0) {
      value.addAll(pArray
          .toList(length: retValuePtr.value)
          .map((value) => value.toDartDateTime()));
    }
    free(pArray);''';

  @override
  String get receiveArrayPostamble => '''
    if (pValueSize.value > 0) {
      value.addAll(pArray.value
          .toList(length: pValueSize.value)
          .map((value) => value.toDartDateTime()));
    }
    free(pValueSize);
    free(pArray);''';
}
