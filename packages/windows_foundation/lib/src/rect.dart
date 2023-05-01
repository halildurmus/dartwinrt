// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../internal.dart';
import 'winrt_struct.dart';

/// Describes the width, height, and point origin of a rectangle.
///
/// {@category struct}
final class Rect implements WinRTStruct {
  Rect(this.x, this.y, this.width, this.height);

  final double x;
  final double y;
  final double width;
  final double height;

  @override
  Pointer<NativeRect> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeRect>();
    ptr.ref.x = x;
    ptr.ref.y = y;
    ptr.ref.width = width;
    ptr.ref.height = height;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Rect &&
        x == other.x &&
        y == other.y &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode =>
      x.hashCode ^ y.hashCode ^ width.hashCode ^ height.hashCode;
}

extension PointerNativeRectConversion on Pointer<NativeRect> {
  /// Converts this [NativeRect] to a Dart [Rect].
  Rect toDart() => Rect(ref.x, ref.y, ref.width, ref.height);
}
