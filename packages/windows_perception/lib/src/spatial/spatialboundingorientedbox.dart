// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// An oriented bounding box in the user's surroundings, with coordinates
/// expressed in meters.
final class SpatialBoundingOrientedBox implements WinRTStruct {
  SpatialBoundingOrientedBox(this.center, this.extents, this.orientation);

  final NativeVector3 center;
  final NativeVector3 extents;
  final NativeQuaternion orientation;

  @override
  Pointer<NativeSpatialBoundingOrientedBox> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialBoundingOrientedBox>();
    nativeStructPtr.ref
      ..center = center
      ..extents = extents
      ..orientation = orientation;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SpatialBoundingOrientedBox &&
        center == other.center &&
        extents == other.extents &&
        orientation == other.orientation;
  }

  @override
  int get hashCode => center.hashCode ^ extents.hashCode ^ orientation.hashCode;
}

/// @nodoc
extension PointerNativeSpatialBoundingOrientedBoxConversion
    on Pointer<NativeSpatialBoundingOrientedBox> {
  /// Converts this [NativeSpatialBoundingOrientedBox] to a Dart
  /// [SpatialBoundingOrientedBox].
  SpatialBoundingOrientedBox toDart() {
    final ref = this.ref;
    return SpatialBoundingOrientedBox(ref.center, ref.extents, ref.orientation);
  }

  /// Creates a `List<SpatialBoundingOrientedBox>` from
  /// `Pointer<NativeSpatialBoundingOrientedBox>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialBoundingOrientedBox>`.
  List<SpatialBoundingOrientedBox> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
