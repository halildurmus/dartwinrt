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

/// Defines the format of a bitmap plane.
final class BitmapPlaneDescription implements WinRTStruct {
  const BitmapPlaneDescription(
      this.startIndex, this.width, this.height, this.stride);

  final int startIndex;
  final int width;
  final int height;
  final int stride;

  @override
  Pointer<NativeBitmapPlaneDescription> toNative(
      {Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeBitmapPlaneDescription>();
    nativeStructPtr.ref
      ..startIndex = startIndex
      ..width = width
      ..height = height
      ..stride = stride;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BitmapPlaneDescription &&
        startIndex == other.startIndex &&
        width == other.width &&
        height == other.height &&
        stride == other.stride;
  }

  @override
  int get hashCode =>
      startIndex.hashCode ^ width.hashCode ^ height.hashCode ^ stride.hashCode;
}

/// @nodoc
extension BitmapPlaneDescriptionListToNativeBitmapPlaneDescriptionArrayConversion
    on List<BitmapPlaneDescription> {
  /// Creates an array of [NativeBitmapPlaneDescription]s from a List of
  /// [BitmapPlaneDescription]s.
  Pointer<NativeBitmapPlaneDescription> toArray(
      {Allocator allocator = calloc}) {
    final array = allocator<NativeBitmapPlaneDescription>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeBitmapPlaneDescriptionConversion
    on NativeBitmapPlaneDescription {
  /// Converts this [NativeBitmapPlaneDescription] into a Dart
  /// [BitmapPlaneDescription].
  BitmapPlaneDescription toDart() =>
      BitmapPlaneDescription(startIndex, width, height, stride);
}

/// @nodoc
extension PointerNativeBitmapPlaneDescriptionConversion
    on Pointer<NativeBitmapPlaneDescription> {
  /// Converts the referenced [NativeBitmapPlaneDescription] into a Dart
  /// [BitmapPlaneDescription].
  BitmapPlaneDescription toDart() {
    final ref = this.ref;
    return BitmapPlaneDescription(
        ref.startIndex, ref.width, ref.height, ref.stride);
  }

  /// Creates a `List<BitmapPlaneDescription>` from
  /// `Pointer<NativeBitmapPlaneDescription>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeBitmapPlaneDescription>`.
  List<BitmapPlaneDescription> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
