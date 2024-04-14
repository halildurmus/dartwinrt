// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unnecessary_import, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Represents the size of a bitmap, in pixels.
final class BitmapSize implements WinRTStruct {
  const BitmapSize(this.width, this.height);

  final int width;
  final int height;

  @override
  Pointer<NativeBitmapSize> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeBitmapSize>();
    nativeStructPtr.ref
      ..width = width
      ..height = height;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BitmapSize &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

/// @nodoc
extension BitmapSizeListToNativeBitmapSizeArrayConversion on List<BitmapSize> {
  /// Creates an array of [NativeBitmapSize]s from a List of [BitmapSize]s.
  Pointer<NativeBitmapSize> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeBitmapSize>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeBitmapSizeConversion on NativeBitmapSize {
  /// Converts this [NativeBitmapSize] into a Dart [BitmapSize].
  BitmapSize toDart() => BitmapSize(width, height);
}

/// @nodoc
extension PointerNativeBitmapSizeConversion on Pointer<NativeBitmapSize> {
  /// Converts the referenced [NativeBitmapSize] into a Dart [BitmapSize].
  BitmapSize toDart() {
    final ref = this.ref;
    return BitmapSize(ref.width, ref.height);
  }

  /// Creates a `List<BitmapSize>` from `Pointer<NativeBitmapSize>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeBitmapSize>`.
  List<BitmapSize> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
