// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Extension method to convert Size arrays to List<Size>

import 'dart:ffi';

import '../../structs.g.dart';

extension SizeArrayToListConversion on Pointer<Size> {
  /// Creates a [List] from `Pointer<Size>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Size>`.
  ///
  /// ```dart
  /// final pSize = ...
  /// final list = pSize.toList(length: 5);
  /// ```
  List<Size> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
