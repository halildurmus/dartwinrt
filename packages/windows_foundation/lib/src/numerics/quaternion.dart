// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a quaternion, which is an abstract representation of an
/// orientation in space that is based on complex numbers.
final class Quaternion implements WinRTStruct {
  Quaternion(this.x, this.y, this.z, this.w);

  final double x;
  final double y;
  final double z;
  final double w;

  @override
  Pointer<NativeQuaternion> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeQuaternion>();
    nativeStructPtr.ref
      ..x = x
      ..y = y
      ..z = z
      ..w = w;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Quaternion &&
        x == other.x &&
        y == other.y &&
        z == other.z &&
        w == other.w;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode ^ z.hashCode ^ w.hashCode;
}

/// @nodoc
extension NativeQuaternionConversion on NativeQuaternion {
  /// Converts this [NativeQuaternion] into a Dart [Quaternion].
  Quaternion toDart() => Quaternion(x, y, z, w);
}

/// @nodoc
extension PointerNativeQuaternionConversion on Pointer<NativeQuaternion> {
  /// Converts the referenced [NativeQuaternion] into a Dart [Quaternion].
  Quaternion toDart() {
    final ref = this.ref;
    return Quaternion(ref.x, ref.y, ref.z, ref.w);
  }

  /// Creates a `List<Quaternion>` from `Pointer<NativeQuaternion>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeQuaternion>`.
  List<Quaternion> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
