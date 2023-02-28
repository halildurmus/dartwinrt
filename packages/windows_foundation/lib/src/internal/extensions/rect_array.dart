// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert Rect arrays to List<Rect>

import 'dart:ffi';

import '../../structs.g.dart';

extension RectArrayToListConversion on Pointer<Rect> {
  /// Creates a [List] from `Pointer<Rect>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Rect>`.
  ///
  /// ```dart
  /// final pRect = ...
  /// final list = pRect.toList(length: 5);
  /// ```
  List<Rect> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
