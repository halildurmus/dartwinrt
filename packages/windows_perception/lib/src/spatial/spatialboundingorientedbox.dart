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

/// An oriented bounding box in the user's surroundings, with coordinates
/// expressed in meters.
final class SpatialBoundingOrientedBox implements WinRTStruct {
  const SpatialBoundingOrientedBox(this.center, this.extents, this.orientation);

  final Vector3 center;
  final Vector3 extents;
  final Quaternion orientation;

  @override
  Pointer<NativeSpatialBoundingOrientedBox> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialBoundingOrientedBox>();
    nativeStructPtr.ref
      ..center = center.toNative(allocator: allocator).ref
      ..extents = extents.toNative(allocator: allocator).ref
      ..orientation = orientation.toNative(allocator: allocator).ref;
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
extension SpatialBoundingOrientedBoxListToNativeSpatialBoundingOrientedBoxArrayConversion
    on List<SpatialBoundingOrientedBox> {
  /// Creates an array of [NativeSpatialBoundingOrientedBox]s from a List of
  /// [SpatialBoundingOrientedBox]s.
  Pointer<NativeSpatialBoundingOrientedBox> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeSpatialBoundingOrientedBox>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeSpatialBoundingOrientedBoxConversion
    on NativeSpatialBoundingOrientedBox {
  /// Converts this [NativeSpatialBoundingOrientedBox] into a Dart
  /// [SpatialBoundingOrientedBox].
  SpatialBoundingOrientedBox toDart() => SpatialBoundingOrientedBox(
      center.toDart(), extents.toDart(), orientation.toDart());
}

/// @nodoc
extension PointerNativeSpatialBoundingOrientedBoxConversion
    on Pointer<NativeSpatialBoundingOrientedBox> {
  /// Converts the referenced [NativeSpatialBoundingOrientedBox] into a Dart
  /// [SpatialBoundingOrientedBox].
  SpatialBoundingOrientedBox toDart() {
    final ref = this.ref;
    return SpatialBoundingOrientedBox(
        ref.center.toDart(), ref.extents.toDart(), ref.orientation.toDart());
  }

  /// Creates a `List<SpatialBoundingOrientedBox>` from
  /// `Pointer<NativeSpatialBoundingOrientedBox>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialBoundingOrientedBox>`.
  List<SpatialBoundingOrientedBox> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
