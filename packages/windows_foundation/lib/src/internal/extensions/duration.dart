// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../ipropertyvalue.dart';
import '../../ireference.dart';
import '../../propertyvalue.dart';
import '../iids.dart';

/// @nodoc
extension WinRTTimeSpanToDartDurationConversion on int {
  /// Converts this integer into a [Duration].
  Duration toDartDuration() => Duration(microseconds: this ~/ 10);
}

/// @nodoc
extension DurationConversions on Duration {
  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createTimeSpan(this);

  /// Converts the value to an [IReference].
  IReference<Duration?> toReference() {
    final propertyValue = toPropertyValue();
    final iid = IID_IReference_Duration;
    final reference = IReference<Duration?>.fromPtr(
        propertyValue.toInterface(iid),
        referenceIid: iid);
    return reference;
  }

  /// Converts this [Duration] into a 64-bit signed integer.
  ///
  /// In WinRT, [Duration] is represented as a time period expressed in
  /// 100-nanosecond units.
  int toWinRTDuration() => inMicroseconds * 10;
}

/// @nodoc
extension DurationListConversions on List<Duration> {
  /// Creates an array of [Int64]s from a List of [Duration]s.
  Pointer<Int64> toArray({Allocator allocator = calloc}) {
    final array = allocator<Int64>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toWinRTDuration();
    }
    return array;
  }

  /// Converts the value to an [IPropertyValue].
  IPropertyValue toPropertyValue() => PropertyValue.createTimeSpanArray(this);
}

/// @nodoc
extension Int64PointerToDurationConversions on Pointer<Int64> {
  /// Converts the 64-bit signed integer value pointed to by this Pointer into a
  /// [Duration].
  Duration toDartDuration() => value.toDartDuration();

  /// Creates a [List] of [Duration]s from `Pointer<Int64>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Int64>`.
  List<Duration> toDurationList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i].toDartDuration()];
}
