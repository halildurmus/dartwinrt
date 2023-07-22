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

/// Describes a vector of three floating-point components.
final class Vector3 implements WinRTStruct {
  Vector3(this.x, this.y, this.z);

  final double x;
  final double y;
  final double z;

  @override
  Pointer<NativeVector3> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeVector3>();
    nativeStructPtr.ref
      ..x = x
      ..y = y
      ..z = z;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Vector3 && x == other.x && y == other.y && z == other.z;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode ^ z.hashCode;
}

/// @nodoc
extension NativeVector3Conversion on NativeVector3 {
  /// Converts this [NativeVector3] into a Dart [Vector3].
  Vector3 toDart() {
    return Vector3(x, y, z);
  }
}

/// @nodoc
extension PointerNativeVector3Conversion on Pointer<NativeVector3> {
  /// Frees the allocated memory for [NativeVector3].
  void free() {
    calloc.free(this);
  }

  /// Converts the referenced [NativeVector3] into a Dart [Vector3].
  Vector3 toDart() {
    final ref = this.ref;
    return Vector3(ref.x, ref.y, ref.z);
  }

  /// Creates a `List<Vector3>` from `Pointer<NativeVector3>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeVector3>`.
  List<Vector3> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
