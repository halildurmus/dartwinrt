// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
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
extension NativeBitmapBoundsConversion on NativeBitmapBounds {
  /// Converts this [NativeBitmapBounds] into a Dart [BitmapBounds].
  BitmapBounds toDart() => BitmapBounds(x, y, width, height);
}

/// @nodoc
extension PointerNativeBitmapBoundsConversion on Pointer<NativeBitmapBounds> {
  /// Converts the referenced [NativeBitmapBounds] into a Dart [BitmapBounds].
  BitmapBounds toDart() {
    final ref = this.ref;
    return BitmapBounds(ref.x, ref.y, ref.width, ref.height);
  }

  /// Creates a `List<BitmapBounds>` from `Pointer<NativeBitmapBounds>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeBitmapBounds>`.
  List<BitmapBounds> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
