// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

/// Represents an x- and y-coordinate pair in two-dimensional space. Can also
/// represent a logical point for certain property usages.
final class Point implements WinRTStruct {
  const Point(this.x, this.y);

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
extension PointListToNativePointArrayConversion on List<Point> {
  /// Creates an array of [NativePoint]s from a List of [Point]s.
  Pointer<NativePoint> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativePoint>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativePointConversion on NativePoint {
  /// Converts this [NativePoint] into a Dart [Point].
  Point toDart() => Point(x, y);
}

/// @nodoc
extension PointerNativePointConversion on Pointer<NativePoint> {
  /// Converts the referenced [NativePoint] into a Dart [Point].
  Point toDart() {
    final ref = this.ref;
    return Point(ref.x, ref.y);
  }

  /// Creates a `List<Point>` from `Pointer<NativePoint>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativePoint>`.
  List<Point> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
