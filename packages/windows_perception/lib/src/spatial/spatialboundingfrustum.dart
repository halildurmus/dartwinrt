// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// A bounding frustum in the user's surroundings defined as a set of 6
/// planes, with coordinates expressed in meters.
final class SpatialBoundingFrustum implements WinRTStruct {
  SpatialBoundingFrustum(
      this.near, this.far, this.right, this.left, this.top, this.bottom);

  final NativePlane near;
  final NativePlane far;
  final NativePlane right;
  final NativePlane left;
  final NativePlane top;
  final NativePlane bottom;

  @override
  Pointer<NativeSpatialBoundingFrustum> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialBoundingFrustum>();
    nativeStructPtr.ref
      ..near = near
      ..far = far
      ..right = right
      ..left = left
      ..top = top
      ..bottom = bottom;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SpatialBoundingFrustum &&
        near == other.near &&
        far == other.far &&
        right == other.right &&
        left == other.left &&
        top == other.top &&
        bottom == other.bottom;
  }

  @override
  int get hashCode =>
      near.hashCode ^
      far.hashCode ^
      right.hashCode ^
      left.hashCode ^
      top.hashCode ^
      bottom.hashCode;
}

/// @nodoc
extension PointerNativeSpatialBoundingFrustumConversion
    on Pointer<NativeSpatialBoundingFrustum> {
  /// Converts this [NativeSpatialBoundingFrustum] to a Dart
  /// [SpatialBoundingFrustum].
  SpatialBoundingFrustum toDart() {
    final ref = this.ref;
    return SpatialBoundingFrustum(
        ref.near, ref.far, ref.right, ref.left, ref.top, ref.bottom);
  }

  /// Creates a `List<SpatialBoundingFrustum>` from
  /// `Pointer<NativeSpatialBoundingFrustum>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialBoundingFrustum>`.
  List<SpatialBoundingFrustum> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
