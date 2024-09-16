// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

/// Contains view or projection transforms for stereo rendering. One transform
/// is for the left display, and the other is for the right display.
final class HolographicStereoTransform implements WinRTStruct {
  const HolographicStereoTransform(this.left, this.right);

  final Matrix4x4 left;
  final Matrix4x4 right;

  @override
  Pointer<NativeHolographicStereoTransform> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeHolographicStereoTransform>();
    nativeStructPtr.ref
      ..left = left.toNative(allocator: allocator).ref
      ..right = right.toNative(allocator: allocator).ref;
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
extension HolographicStereoTransformListToNativeHolographicStereoTransformArrayConversion
    on List<HolographicStereoTransform> {
  /// Creates an array of [NativeHolographicStereoTransform]s from a List of
  /// [HolographicStereoTransform]s.
  Pointer<NativeHolographicStereoTransform> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeHolographicStereoTransform>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeHolographicStereoTransformConversion
    on NativeHolographicStereoTransform {
  /// Converts this [NativeHolographicStereoTransform] into a Dart
  /// [HolographicStereoTransform].
  HolographicStereoTransform toDart() =>
      HolographicStereoTransform(left.toDart(), right.toDart());
}

/// @nodoc
extension PointerNativeHolographicStereoTransformConversion
    on Pointer<NativeHolographicStereoTransform> {
  /// Converts the referenced [NativeHolographicStereoTransform] into a Dart
  /// [HolographicStereoTransform].
  HolographicStereoTransform toDart() {
    final ref = this.ref;
    return HolographicStereoTransform(ref.left.toDart(), ref.right.toDart());
  }

  /// Creates a `List<HolographicStereoTransform>` from
  /// `Pointer<NativeHolographicStereoTransform>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeHolographicStereoTransform>`.
  List<HolographicStereoTransform> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
