// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

extension Int64PointerToDartDateTimeConversion on Pointer<Int64> {
  /// Converts the 64-bit signed integer value pointed to by this Pointer into a
  /// [DateTime].
  DateTime toDartDateTime() => value.toDartDateTime();
}

extension IntToDartDateTimeConversion on int {
  /// Converts this integer into a [DateTime].
  DateTime toDartDateTime() =>
      DateTime.utc(1601, 01, 01).add(Duration(microseconds: this ~/ 10));
}

extension DartDateTimeToWinRTDateTimeConversion on DateTime {
  /// Converts this [DateTime] into a 64-bit signed integer.
  ///
  /// In WinRT, [DateTime] is represented as a 64-bit signed integer that
  /// represents a point in time as the number of 100-nanosecond intervals prior
  /// to or after midnight on January 1, 1601 (according to the Gregorian
  /// Calendar).
  int toWinRTDateTime() =>
      difference(DateTime.utc(1601, 01, 01)).inMicroseconds * 10;
}
