// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert bool arrays to List<bool>

import 'dart:ffi';

extension BoolHelper on Pointer<Bool> {
  /// Creates a [List] from `Pointer<Bool>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Bool>`.
  ///
  /// ```dart
  /// final pBool = ...
  /// final list = pBool.toList(length: 5);
  /// ```
  List<bool> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
