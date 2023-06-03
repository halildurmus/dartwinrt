// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../internal.dart';
import 'winrt_struct.dart';

/// Describes the width and height of an object.
final class Size implements WinRTStruct {
  Size(this.width, this.height);

  final double width;
  final double height;

  @override
  Pointer<NativeSize> toNative({Allocator allocator = malloc}) {
    final ptr = allocator<NativeSize>();
    ptr.ref.width = width;
    ptr.ref.height = height;
    return ptr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Size && width == other.width && height == other.height;
  }

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

/// @nodoc
extension PointerNativeSizeConversion on Pointer<NativeSize> {
  /// Converts this [NativeSize] to a Dart [Size].
  Size toDart() => Size(ref.width, ref.height);
}
