// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../internal.dart';
import 'winrt_struct.dart';

/// Represents an x- and y-coordinate pair in two-dimensional space. Can
/// also represent a logical point for certain property usages.
final class Point implements WinRTStruct {
  Point(this.x, this.y);

  final double x;
  final double y;

  @override
  Pointer<NativePoint> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativePoint>();
    nativeStructPtr.ref
      ..x = x
      ..y = y;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Point && x == other.x && y == other.y;
  }

  @override
  int get hashCode => x.hashCode ^ y.hashCode;
}

/// @nodoc
extension PointerNativePointConversion on Pointer<NativePoint> {
  /// Converts this [NativePoint] to a Dart [Point].
  Point toDart() {
    final ref = this.ref;
    return Point(ref.x, ref.y);
  }
}
