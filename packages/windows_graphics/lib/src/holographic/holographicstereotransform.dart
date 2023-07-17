// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Contains view or projection transforms for stereo rendering. One
/// transform is for the left display, and the other is for the right
/// display.
final class HolographicStereoTransform implements WinRTStruct {
  HolographicStereoTransform(this.left, this.right);

  final NativeMatrix4x4 left;
  final NativeMatrix4x4 right;

  @override
  Pointer<NativeHolographicStereoTransform> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeHolographicStereoTransform>();
    nativeStructPtr.ref
      ..left = left
      ..right = right;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is HolographicStereoTransform &&
        left == other.left &&
        right == other.right;
  }

  @override
  int get hashCode => left.hashCode ^ right.hashCode;
}

/// @nodoc
extension PointerNativeHolographicStereoTransformConversion
    on Pointer<NativeHolographicStereoTransform> {
  /// Converts this [NativeHolographicStereoTransform] to a Dart
  /// [HolographicStereoTransform].
  HolographicStereoTransform toDart() {
    final ref = this.ref;
    return HolographicStereoTransform(ref.left, ref.right);
  }

  /// Creates a `List<HolographicStereoTransform>` from
  /// `Pointer<NativeHolographicStereoTransform>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeHolographicStereoTransform>`.
  List<HolographicStereoTransform> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
