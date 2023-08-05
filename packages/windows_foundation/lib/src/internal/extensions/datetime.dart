// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../iids.dart';

/// @nodoc
extension WinRTDateTimeToDartDateTimeConversion on int {
  /// Converts this integer into a [DateTime].
  DateTime toDartDateTime() =>
      DateTime.utc(1601, 01, 01).add(Duration(microseconds: this ~/ 10));
}

/// @nodoc
extension DateTimeConversions on DateTime {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createDateTime(this);

  /// Converts the value to an [IReference].
  IReference<DateTime?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_DateTime;
    final reference = IReference<DateTime?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }

  /// Converts this [DateTime] into a 64-bit signed integer.
  ///
  /// In WinRT, [DateTime] is represented as a 64-bit signed integer that
  /// represents a point in time as the number of 100-nanosecond intervals prior
  /// to or after midnight on January 1, 1601 (according to the Gregorian
  /// Calendar).
  int toWinRTDateTime() =>
      difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
}

/// @nodoc
extension DateTimeListConversions on List<DateTime> {
  /// Creates an array of [Int64]s from a List of [DateTime]s.
  Pointer<Int64> toArray({Allocator allocator = calloc}) {
    final array = allocator<Int64>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toWinRTDateTime();
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createDateTimeArray(this);
}

/// @nodoc
extension Int64PointerToDateTimeConversions on Pointer<Int64> {
  /// Converts the 64-bit signed integer value pointed to by this Pointer into a
  /// [DateTime].
  DateTime toDartDateTime() => value.toDartDateTime();

  /// Creates a [List] of [DateTime]s from `Pointer<Int64>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int64>`.
  List<DateTime> toDateTimeList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i].toDartDateTime()];
}
