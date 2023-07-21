// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;

import '../internal.dart';
import 'winrt_struct.dart';

/// Describes the width, height, and point origin of a rectangle.
final class Rect implements WinRTStruct {
  Rect(this.x, this.y, this.width, this.height);

  final double x;
  final double y;
  final double width;
  final double height;

  @override
  Pointer<NativeRect> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeRect>();
    nativeStructPtr.ref
      ..x = x
      ..y = y
      ..width = width
      ..height = height;
    return nativeStructPtr;
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

/// @nodoc
extension NativeRectConversion on NativeRect {
  /// Converts this [NativeRect] into a Dart [Rect].
  Rect toDart() {
    return Rect(x, y, width, height);
  }
}

/// @nodoc
extension PointerNativeRectConversion on Pointer<NativeRect> {
  /// Frees the allocated memory for [NativeRect].
  void free() {
    calloc.free(this);
  }

  /// Converts the referenced [NativeRect] into a Dart [Rect].
  Rect toDart() {
    final ref = this.ref;
    return Rect(ref.x, ref.y, ref.width, ref.height);
  }

  /// Creates a `List<Rect>` from `Pointer<NativeRect>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeRect>`.
  List<Rect> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
