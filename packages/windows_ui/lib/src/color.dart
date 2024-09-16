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

/// Describes a color in terms of alpha, red, green, and blue channels.
final class Color implements WinRTStruct {
  const Color(this.a, this.r, this.g, this.b);

  final int a;
  final int r;
  final int g;
  final int b;

  @override
  Pointer<NativeColor> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeColor>();
    nativeStructPtr.ref
      ..a = a
      ..r = r
      ..g = g
      ..b = b;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Color &&
        a == other.a &&
        r == other.r &&
        g == other.g &&
        b == other.b;
  }

  @override
  int get hashCode => a.hashCode ^ r.hashCode ^ g.hashCode ^ b.hashCode;
}

/// @nodoc
extension ColorListToNativeColorArrayConversion on List<Color> {
  /// Creates an array of [NativeColor]s from a List of [Color]s.
  Pointer<NativeColor> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeColor>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeColorConversion on NativeColor {
  /// Converts this [NativeColor] into a Dart [Color].
  Color toDart() => Color(a, r, g, b);
}

/// @nodoc
extension PointerNativeColorConversion on Pointer<NativeColor> {
  /// Converts the referenced [NativeColor] into a Dart [Color].
  Color toDart() {
    final ref = this.ref;
    return Color(ref.a, ref.r, ref.g, ref.b);
  }

  /// Creates a `List<Color>` from `Pointer<NativeColor>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeColor>`.
  List<Color> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
