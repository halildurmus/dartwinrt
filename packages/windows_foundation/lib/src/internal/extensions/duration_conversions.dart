// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

extension Int64PointerToDartDurationConversion on Pointer<Int64> {
  /// Converts the 64-bit signed integer value pointed to by this Pointer into a
  /// [Duration].
  Duration toDartDuration() => value.toDartDuration();
}

extension IntToDartDurationConversion on int {
  /// Converts this integer into a [Duration].
  Duration toDartDuration() => Duration(microseconds: this ~/ 10);
}

extension DartDurationToWinRTDurationConversion on Duration {
  /// Converts this [Duration] into a 64-bit signed integer.
  ///
  /// In WinRT, [Duration] is represented as a time period expressed in
  /// 100-nanosecond units.
  int toWinRTDuration() => inMicroseconds * 10;
}
