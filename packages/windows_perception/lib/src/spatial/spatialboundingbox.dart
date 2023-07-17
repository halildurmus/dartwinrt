// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// An axis-aligned bounding box in the user's surroundings, with
/// coordinates expressed in meters.
final class SpatialBoundingBox implements WinRTStruct {
  SpatialBoundingBox(this.center, this.extents);

  final NativeVector3 center;
  final NativeVector3 extents;

  @override
  Pointer<NativeSpatialBoundingBox> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialBoundingBox>();
    nativeStructPtr.ref
      ..center = center
      ..extents = extents;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SpatialBoundingBox &&
        center == other.center &&
        extents == other.extents;
  }

  @override
  int get hashCode => center.hashCode ^ extents.hashCode;
}

/// @nodoc
extension PointerNativeSpatialBoundingBoxConversion
    on Pointer<NativeSpatialBoundingBox> {
  /// Converts this [NativeSpatialBoundingBox] to a Dart [SpatialBoundingBox].
  SpatialBoundingBox toDart() {
    final ref = this.ref;
    return SpatialBoundingBox(ref.center, ref.extents);
  }

  /// Creates a `List<SpatialBoundingBox>` from
  /// `Pointer<NativeSpatialBoundingBox>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialBoundingBox>`.
  List<SpatialBoundingBox> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
