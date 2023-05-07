// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../internal.dart';
import '../winrt_struct.dart';

/// Describes a plane (a flat, two-dimensional surface).
///
/// {@category struct}
final class Plane implements WinRTStruct {
  Plane(this.normal, this.d);

  final NativeVector3 normal;
  final double d;

  @override
  Pointer<NativePlane> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativePlane>();
    ptr.ref.normal = normal;
    ptr.ref.d = d;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Plane && normal == other.normal && d == other.d;
  }

  @override
  int get hashCode => normal.hashCode ^ d.hashCode;
}

extension PointerNativePlaneConversion on Pointer<NativePlane> {
  /// Converts this [NativePlane] to a Dart [Plane].
  Plane toDart() => Plane(ref.normal, ref.d);
}
