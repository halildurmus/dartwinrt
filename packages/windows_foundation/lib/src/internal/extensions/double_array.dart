// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:typed_data';

/// @nodoc
extension DoubleArrayToFloat64ListConversion on Pointer<Double> {
  /// Creates a [Float64List] from `Pointer<Double>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Double>`.
  Float64List toList({int length = 1}) =>
      Float64List.fromList(asTypedList(length));
}

/// @nodoc
extension FloatArrayToFloat32ListConversion on Pointer<Float> {
  /// Creates a [Float32List] from `Pointer<Float>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Float>`.
  Float32List toList({int length = 1}) =>
      Float32List.fromList(asTypedList(length));
}
