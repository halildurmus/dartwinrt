// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

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
extension PointerNativeVector2Conversion on Pointer<NativeVector2> {
  /// Converts this [NativeVector2] to a Dart [Vector2].
  Vector2 toDart() {
    final ref = this.ref;
    return Vector2(ref.x, ref.y);
  }
}
