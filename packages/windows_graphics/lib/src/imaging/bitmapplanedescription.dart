// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Defines the format of a bitmap plane.
final class BitmapPlaneDescription implements WinRTStruct {
  BitmapPlaneDescription(this.startIndex, this.width, this.height, this.stride);

  final int startIndex;
  final int width;
  final int height;
  final int stride;

  @override
  Pointer<NativeBitmapPlaneDescription> toNative(
      {Allocator allocator = malloc}) {
    final ptr = allocator<NativeBitmapPlaneDescription>();
    ptr.ref.startIndex = startIndex;
    ptr.ref.width = width;
    ptr.ref.height = height;
    ptr.ref.stride = stride;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BitmapPlaneDescription &&
        startIndex == other.startIndex &&
        width == other.width &&
        height == other.height &&
        stride == other.stride;
  }

  @override
  int get hashCode =>
      startIndex.hashCode ^ width.hashCode ^ height.hashCode ^ stride.hashCode;
}

/// @nodoc
extension PointerNativeBitmapPlaneDescriptionConversion
    on Pointer<NativeBitmapPlaneDescription> {
  /// Converts this [NativeBitmapPlaneDescription] to a Dart
  /// [BitmapPlaneDescription].
  BitmapPlaneDescription toDart() =>
      BitmapPlaneDescription(ref.startIndex, ref.width, ref.height, ref.stride);
}
