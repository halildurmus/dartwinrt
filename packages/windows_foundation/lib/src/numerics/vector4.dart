// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a vector of four floating-point components.
///
/// {@category struct}
class Vector4 implements WinRTStruct {
  Vector4(this.x, this.y, this.z, this.w);

  final double x;
  final double y;
  final double z;
  final double w;

  @override
  Pointer<NativeVector4> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeVector4>();
    ptr.ref.x = x;
    ptr.ref.y = y;
    ptr.ref.z = z;
    ptr.ref.w = w;
    return ptr;
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

extension PointerNativeVector4Conversion on Pointer<NativeVector4> {
  /// Converts this [NativeVector4] to a Dart [Vector4].
  Vector4 toDart() => Vector4(ref.x, ref.y, ref.z, ref.w);
}
