// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Extension method to convert NativeRect arrays to List<Rect>

import 'dart:ffi';

import '../../rect.dart';
import '../native_structs.g.dart';

/// @nodoc
extension RectArrayToListConversion on Pointer<NativeRect> {
  /// Creates a [List] from `Pointer<NativeRect>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeRect>`.
  ///
  /// ```dart
  /// final pRect = ...
  /// final list = pRect.toList(length: 5);
  /// ```
  List<Rect> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
