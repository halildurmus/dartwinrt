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

/// Describes a vector of four floating-point components.
final class Vector4 implements WinRTStruct {
  Vector4(this.x, this.y, this.z, this.w);

  final double x;
  final double y;
  final double z;
  final double w;

  @override
  Pointer<NativeVector4> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeVector4>();
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
    return other is Vector4 &&
        x == other.x &&
        y == other.y &&
        z == other.z &&
        w == other.w;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode ^ z.hashCode ^ w.hashCode;
}

/// @nodoc
extension Vector4ListToNativeVector4ArrayConversion on List<Vector4> {
  /// Creates an array of [NativeVector4]s from a List of [Vector4]s.
  Pointer<NativeVector4> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeVector4>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeVector4Conversion on NativeVector4 {
  /// Converts this [NativeVector4] into a Dart [Vector4].
  Vector4 toDart() => Vector4(x, y, z, w);
}

/// @nodoc
extension PointerNativeVector4Conversion on Pointer<NativeVector4> {
  /// Converts the referenced [NativeVector4] into a Dart [Vector4].
  Vector4 toDart() {
    final ref = this.ref;
    return Vector4(ref.x, ref.y, ref.z, ref.w);
  }

  /// Creates a `List<Vector4>` from `Pointer<NativeVector4>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeVector4>`.
  List<Vector4> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
