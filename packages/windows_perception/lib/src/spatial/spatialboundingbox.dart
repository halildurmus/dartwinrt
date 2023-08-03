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

/// An axis-aligned bounding box in the user's surroundings, with coordinates
/// expressed in meters.
final class SpatialBoundingBox implements WinRTStruct {
  const SpatialBoundingBox(this.center, this.extents);

  final Vector3 center;
  final Vector3 extents;

  @override
  Pointer<NativeSpatialBoundingBox> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialBoundingBox>();
    nativeStructPtr.ref
      ..center = center.toNative(allocator: allocator).ref
      ..extents = extents.toNative(allocator: allocator).ref;
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
extension SpatialBoundingBoxListToNativeSpatialBoundingBoxArrayConversion
    on List<SpatialBoundingBox> {
  /// Creates an array of [NativeSpatialBoundingBox]s from a List of
  /// [SpatialBoundingBox]s.
  Pointer<NativeSpatialBoundingBox> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeSpatialBoundingBox>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeSpatialBoundingBoxConversion on NativeSpatialBoundingBox {
  /// Converts this [NativeSpatialBoundingBox] into a Dart [SpatialBoundingBox].
  SpatialBoundingBox toDart() =>
      SpatialBoundingBox(center.toDart(), extents.toDart());
}

/// @nodoc
extension PointerNativeSpatialBoundingBoxConversion
    on Pointer<NativeSpatialBoundingBox> {
  /// Converts the referenced [NativeSpatialBoundingBox] into a Dart
  /// [SpatialBoundingBox].
  SpatialBoundingBox toDart() {
    final ref = this.ref;
    return SpatialBoundingBox(ref.center.toDart(), ref.extents.toDart());
  }

  /// Creates a `List<SpatialBoundingBox>` from
  /// `Pointer<NativeSpatialBoundingBox>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialBoundingBox>`.
  List<SpatialBoundingBox> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
