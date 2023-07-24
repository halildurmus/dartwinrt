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

/// A bounding frustum in the user's surroundings defined as a set of 6
/// planes, with coordinates expressed in meters.
final class SpatialBoundingFrustum implements WinRTStruct {
  SpatialBoundingFrustum(
      this.near, this.far, this.right, this.left, this.top, this.bottom);

  final Plane near;
  final Plane far;
  final Plane right;
  final Plane left;
  final Plane top;
  final Plane bottom;

  @override
  Pointer<NativeSpatialBoundingFrustum> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialBoundingFrustum>();
    nativeStructPtr.ref
      ..near = near.toNative(allocator: allocator).ref
      ..far = far.toNative(allocator: allocator).ref
      ..right = right.toNative(allocator: allocator).ref
      ..left = left.toNative(allocator: allocator).ref
      ..top = top.toNative(allocator: allocator).ref
      ..bottom = bottom.toNative(allocator: allocator).ref;
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
extension SpatialBoundingFrustumListToNativeSpatialBoundingFrustumArrayConversion
    on List<SpatialBoundingFrustum> {
  /// Creates an array of [NativeSpatialBoundingFrustum]s from a List of
  /// [SpatialBoundingFrustum]s.
  Pointer<NativeSpatialBoundingFrustum> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeSpatialBoundingFrustum>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeSpatialBoundingFrustumConversion
    on NativeSpatialBoundingFrustum {
  /// Converts this [NativeSpatialBoundingFrustum] into a Dart
  /// [SpatialBoundingFrustum].
  SpatialBoundingFrustum toDart() => SpatialBoundingFrustum(
      near.toDart(),
      far.toDart(),
      right.toDart(),
      left.toDart(),
      top.toDart(),
      bottom.toDart());
}

/// @nodoc
extension PointerNativeSpatialBoundingFrustumConversion
    on Pointer<NativeSpatialBoundingFrustum> {
  /// Converts the referenced [NativeSpatialBoundingFrustum] into a Dart
  /// [SpatialBoundingFrustum].
  SpatialBoundingFrustum toDart() {
    final ref = this.ref;
    return SpatialBoundingFrustum(
        ref.near.toDart(),
        ref.far.toDart(),
        ref.right.toDart(),
        ref.left.toDart(),
        ref.top.toDart(),
        ref.bottom.toDart());
  }

  /// Creates a `List<SpatialBoundingFrustum>` from
  /// `Pointer<NativeSpatialBoundingFrustum>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialBoundingFrustum>`.
  List<SpatialBoundingFrustum> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
