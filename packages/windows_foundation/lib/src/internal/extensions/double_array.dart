// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension methods to convert double arrays to List<double>

import 'dart:ffi';

extension DoubleArrayToListConversion on Pointer<Double> {
  /// Creates a [List] from `Pointer<Double>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Double>`.
  ///
  /// ```dart
  /// final pDouble = ...
  /// final list = pDouble.toList(length: 5);
  /// ```
  List<double> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}

extension FloatArrayToListConversion on Pointer<Float> {
  /// Creates a [List] from `Pointer<Float>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Float>`.
  ///
  /// ```dart
  /// final pFloat = ...
  /// final list = pFloat.toList(length: 5);
  /// ```
  List<double> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
