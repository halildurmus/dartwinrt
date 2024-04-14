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

/// Represents the red, green, and blue values of a white balance gain setting.
final class WhiteBalanceGain implements WinRTStruct {
  const WhiteBalanceGain(this.r, this.g, this.b);

  final double r;
  final double g;
  final double b;

  @override
  Pointer<NativeWhiteBalanceGain> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeWhiteBalanceGain>();
    nativeStructPtr.ref
      ..r = r
      ..g = g
      ..b = b;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WhiteBalanceGain &&
        r == other.r &&
        g == other.g &&
        b == other.b;
  }

  @override
  int get hashCode => r.hashCode ^ g.hashCode ^ b.hashCode;
}

/// @nodoc
extension WhiteBalanceGainListToNativeWhiteBalanceGainArrayConversion
    on List<WhiteBalanceGain> {
  /// Creates an array of [NativeWhiteBalanceGain]s from a List of
  /// [WhiteBalanceGain]s.
  Pointer<NativeWhiteBalanceGain> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeWhiteBalanceGain>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeWhiteBalanceGainConversion on NativeWhiteBalanceGain {
  /// Converts this [NativeWhiteBalanceGain] into a Dart [WhiteBalanceGain].
  WhiteBalanceGain toDart() => WhiteBalanceGain(r, g, b);
}

/// @nodoc
extension PointerNativeWhiteBalanceGainConversion
    on Pointer<NativeWhiteBalanceGain> {
  /// Converts the referenced [NativeWhiteBalanceGain] into a Dart
  /// [WhiteBalanceGain].
  WhiteBalanceGain toDart() {
    final ref = this.ref;
    return WhiteBalanceGain(ref.r, ref.g, ref.b);
  }

  /// Creates a `List<WhiteBalanceGain>` from `Pointer<NativeWhiteBalanceGain>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeWhiteBalanceGain>`.
  List<WhiteBalanceGain> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
