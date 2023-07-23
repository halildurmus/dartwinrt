// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;

import '../internal.dart';
import 'winrt_struct.dart';

/// Describes the width and height of an object.
final class Size implements WinRTStruct {
  Size(this.width, this.height);

  final double width;
  final double height;

  @override
  Pointer<NativeSize> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSize>();
    nativeStructPtr.ref
      ..width = width
      ..height = height;
    return nativeStructPtr;
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
extension NativeSizeConversion on NativeSize {
  /// Converts this [NativeSize] into a Dart [Size].
  Size toDart() => Size(width, height);
}

/// @nodoc
extension PointerNativeSizeConversion on Pointer<NativeSize> {
  /// Converts the referenced [NativeSize] into a Dart [Size].
  Size toDart() {
    final ref = this.ref;
    return Size(ref.width, ref.height);
  }

  /// Creates a `List<Size>` from `Pointer<NativeSize>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSize>`.
  List<Size> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
