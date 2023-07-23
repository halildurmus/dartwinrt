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

/// A ray in the user's surroundings, with coordinates expressed in meters.
final class SpatialRay implements WinRTStruct {
  SpatialRay(this.origin, this.direction);

  final Vector3 origin;
  final Vector3 direction;

  @override
  Pointer<NativeSpatialRay> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSpatialRay>();
    nativeStructPtr.ref
      ..origin = origin.toNative(allocator: allocator).ref
      ..direction = direction.toNative(allocator: allocator).ref;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SpatialRay &&
        origin == other.origin &&
        direction == other.direction;
  }

  @override
  int get hashCode => origin.hashCode ^ direction.hashCode;
}

/// @nodoc
extension NativeSpatialRayConversion on NativeSpatialRay {
  /// Converts this [NativeSpatialRay] into a Dart [SpatialRay].
  SpatialRay toDart() => SpatialRay(origin.toDart(), direction.toDart());
}

/// @nodoc
extension PointerNativeSpatialRayConversion on Pointer<NativeSpatialRay> {
  /// Converts the referenced [NativeSpatialRay] into a Dart [SpatialRay].
  SpatialRay toDart() {
    final ref = this.ref;
    return SpatialRay(ref.origin.toDart(), ref.direction.toDart());
  }

  /// Creates a `List<SpatialRay>` from `Pointer<NativeSpatialRay>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSpatialRay>`.
  List<SpatialRay> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
