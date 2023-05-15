// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Defines the height and wide of a surface in a two-dimensional plane.
///
/// {@category struct}
final class SizeInt32 implements WinRTStruct {
  SizeInt32(this.width, this.height);

  final int width;
  final int height;

  @override
  Pointer<NativeSizeInt32> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeSizeInt32>();
    ptr.ref.width = width;
    ptr.ref.height = height;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SizeInt32 && width == other.width && height == other.height;
  }

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

extension PointerNativeSizeInt32Conversion on Pointer<NativeSizeInt32> {
  /// Converts this [NativeSizeInt32] to a Dart [SizeInt32].
  SizeInt32 toDart() => SizeInt32(ref.width, ref.height);
}
