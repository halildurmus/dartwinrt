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

/// Describes a vector of two floating-point components.
final class Vector2 implements WinRTStruct {
  Vector2(this.x, this.y);

  final double x;
  final double y;

  @override
  Pointer<NativeVector2> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeVector2>();
    nativeStructPtr.ref
      ..x = x
      ..y = y;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Vector2 && x == other.x && y == other.y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

/// @nodoc
extension NativeVector2Conversion on NativeVector2 {
  /// Converts this [NativeVector2] into a Dart [Vector2].
  Vector2 toDart() => Vector2(x, y);
}

/// @nodoc
extension PointerNativeVector2Conversion on Pointer<NativeVector2> {
  /// Converts the referenced [NativeVector2] into a Dart [Vector2].
  Vector2 toDart() {
    final ref = this.ref;
    return Vector2(ref.x, ref.y);
  }

  /// Creates a `List<Vector2>` from `Pointer<NativeVector2>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeVector2>`.
  List<Vector2> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
