// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

/// @nodoc
extension BoolArrayToListConversion on Pointer<Bool> {
  /// Creates a [List] from `Pointer<Bool>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<Bool>`.
  List<bool> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) this[i]];
}
