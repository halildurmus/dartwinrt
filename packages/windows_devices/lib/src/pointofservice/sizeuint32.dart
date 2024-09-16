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

/// Defines the height and width of an object in a two-dimensional plane.
final class SizeUInt32 implements WinRTStruct {
  const SizeUInt32(this.width, this.height);

  final int width;
  final int height;

  @override
  Pointer<NativeSizeUInt32> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeSizeUInt32>();
    nativeStructPtr.ref
      ..width = width
      ..height = height;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is SizeUInt32 &&
        width == other.width &&
        height == other.height;
  }

  @override
  int get hashCode => width.hashCode ^ height.hashCode;
}

/// @nodoc
extension SizeUInt32ListToNativeSizeUInt32ArrayConversion on List<SizeUInt32> {
  /// Creates an array of [NativeSizeUInt32]s from a List of [SizeUInt32]s.
  Pointer<NativeSizeUInt32> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeSizeUInt32>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeSizeUInt32Conversion on NativeSizeUInt32 {
  /// Converts this [NativeSizeUInt32] into a Dart [SizeUInt32].
  SizeUInt32 toDart() => SizeUInt32(width, height);
}

/// @nodoc
extension PointerNativeSizeUInt32Conversion on Pointer<NativeSizeUInt32> {
  /// Converts the referenced [NativeSizeUInt32] into a Dart [SizeUInt32].
  SizeUInt32 toDart() {
    final ref = this.ref;
    return SizeUInt32(ref.width, ref.height);
  }

  /// Creates a `List<SizeUInt32>` from `Pointer<NativeSizeUInt32>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeSizeUInt32>`.
  List<SizeUInt32> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
