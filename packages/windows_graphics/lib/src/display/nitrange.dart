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

/// Describes the minimum, maximum, and step size you can use when using nits to
/// describe brightness on a device.
final class NitRange implements WinRTStruct {
  const NitRange(this.minNits, this.maxNits, this.stepSizeNits);

  final double minNits;
  final double maxNits;
  final double stepSizeNits;

  @override
  Pointer<NativeNitRange> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeNitRange>();
    nativeStructPtr.ref
      ..minNits = minNits
      ..maxNits = maxNits
      ..stepSizeNits = stepSizeNits;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is NitRange &&
        minNits == other.minNits &&
        maxNits == other.maxNits &&
        stepSizeNits == other.stepSizeNits;
  }

  @override
  int get hashCode =>
      minNits.hashCode ^ maxNits.hashCode ^ stepSizeNits.hashCode;
}

/// @nodoc
extension NitRangeListToNativeNitRangeArrayConversion on List<NitRange> {
  /// Creates an array of [NativeNitRange]s from a List of [NitRange]s.
  Pointer<NativeNitRange> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeNitRange>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeNitRangeConversion on NativeNitRange {
  /// Converts this [NativeNitRange] into a Dart [NitRange].
  NitRange toDart() => NitRange(minNits, maxNits, stepSizeNits);
}

/// @nodoc
extension PointerNativeNitRangeConversion on Pointer<NativeNitRange> {
  /// Converts the referenced [NativeNitRange] into a Dart [NitRange].
  NitRange toDart() {
    final ref = this.ref;
    return NitRange(ref.minNits, ref.maxNits, ref.stepSizeNits);
  }

  /// Creates a `List<NitRange>` from `Pointer<NativeNitRange>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeNitRange>`.
  List<NitRange> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
