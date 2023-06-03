// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension method to convert NativePoint arrays to List<Point>

import 'dart:ffi';

import '../../point.dart';
import '../native_structs.g.dart';

/// @nodoc
extension PointArrayToListConversion on Pointer<NativePoint> {
  /// Creates a [List] from `Pointer<NativePoint>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativePoint>`.
  ///
  /// ```dart
  /// final pPoint = ...
  /// final list = pPoint.toList(length: 5);
  /// ```
  List<Point> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
