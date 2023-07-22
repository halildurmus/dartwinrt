// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;

import '../../internal.dart';
import '../winrt_struct.dart';
import 'vector3.dart';

/// Describes a plane (a flat, two-dimensional surface).
final class Plane implements WinRTStruct {
  Plane(this.normal, this.d);

  final Vector3 normal;
  final double d;

  @override
  Pointer<NativePlane> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativePlane>();
    nativeStructPtr.ref
      ..normal = normal.toNative(allocator: allocator).ref
      ..d = d;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Plane && normal == other.normal && d == other.d;
  }

  @override
  int get hashCode => normal.hashCode ^ d.hashCode;
}

/// @nodoc
extension NativePlaneConversion on NativePlane {
  /// Converts this [NativePlane] into a Dart [Plane].
  Plane toDart() {
    return Plane(normal.toDart(), d);
  }
}

/// @nodoc
extension PointerNativePlaneConversion on Pointer<NativePlane> {
  /// Frees the allocated memory for [NativePlane].
  void free() {
    calloc.free(this);
  }

  /// Converts the referenced [NativePlane] into a Dart [Plane].
  Plane toDart() {
    final ref = this.ref;
    return Plane(ref.normal.toDart(), ref.d);
  }

  /// Creates a `List<Plane>` from `Pointer<NativePlane>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativePlane>`.
  List<Plane> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
