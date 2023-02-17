// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert Point arrays to List<Point>

import 'dart:ffi';

import '../../structs.g.dart';

extension PointHelper on Pointer<Point> {
  /// Creates a [List] from `Pointer<Point>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Point>`.
  ///
  /// ```dart
  /// final pPoint = ...
  /// final list = pPoint.toList(length: 5);
  /// ```
  List<Point> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
