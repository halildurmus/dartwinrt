// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a quaternion, which is an abstract representation of an
/// orientation in space that is based on complex numbers.
///
/// {@category struct}
class Quaternion implements WinRTStruct {
  Quaternion(this.x, this.y, this.z, this.w);

  final double x;
  final double y;
  final double z;
  final double w;

  @override
  Pointer<NativeQuaternion> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeQuaternion>();
    ptr.ref.x = x;
    ptr.ref.y = y;
    ptr.ref.z = z;
    ptr.ref.w = w;
    return ptr;
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

extension PointerNativeQuaternionConversion on Pointer<NativeQuaternion> {
  /// Converts this [NativeQuaternion] to a Dart [Quaternion].
  Quaternion toDart() => Quaternion(ref.x, ref.y, ref.z, ref.w);
}
