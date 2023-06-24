// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Specifies a bounding rectangle.
final class BitmapBounds implements WinRTStruct {
  BitmapBounds(this.x, this.y, this.width, this.height);

  final int x;
  final int y;
  final int width;
  final int height;

  @override
  Pointer<NativeBitmapBounds> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeBitmapBounds>();
    nativeStructPtr.ref
      ..x = x
      ..y = y
      ..width = width
      ..height = height;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BitmapBounds &&
        x == other.x &&
        y == other.y &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode =>
      x.hashCode ^ y.hashCode ^ width.hashCode ^ height.hashCode;
}

/// @nodoc
extension PointerNativeBitmapBoundsConversion on Pointer<NativeBitmapBounds> {
  /// Converts this [NativeBitmapBounds] to a Dart [BitmapBounds].
  BitmapBounds toDart() {
    final ref = this.ref;
    return BitmapBounds(ref.x, ref.y, ref.width, ref.height);
  }
}
