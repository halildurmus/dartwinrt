// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension method to convert NativeSize arrays to List<Size>

import 'dart:ffi';

import '../../size.dart';
import '../native_structs.g.dart';

extension SizeArrayToListConversion on Pointer<NativeSize> {
  /// Creates a [List] from `Pointer<NativeSize>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSize`.
  ///
  /// ```dart
  /// final pSize = ...
  /// final list = pSize.toList(length: 5);
  /// ```
  List<Size> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
