// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// Stores a relative timestap of a general-purpose I/O (GPIO) pin value
/// change, and whether the pin transitioned from low to high or from high
/// to low.
final class GpioChangeRecord implements WinRTStruct {
  GpioChangeRecord(this.relativeTime, this.edge);

  final int relativeTime;
  final int edge;

  @override
  Pointer<NativeGpioChangeRecord> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeGpioChangeRecord>();
    nativeStructPtr.ref
      ..relativeTime = relativeTime
      ..edge = edge;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GpioChangeRecord &&
        relativeTime == other.relativeTime &&
        edge == other.edge;
  }

  @override
  int get hashCode => relativeTime.hashCode ^ edge.hashCode;
}

/// @nodoc
extension PointerNativeGpioChangeRecordConversion
    on Pointer<NativeGpioChangeRecord> {
  /// Converts this [NativeGpioChangeRecord] to a Dart [GpioChangeRecord].
  GpioChangeRecord toDart() {
    final ref = this.ref;
    return GpioChangeRecord(ref.relativeTime, ref.edge);
  }

  /// Creates a `List<GpioChangeRecord>` from
  /// `Pointer<NativeGpioChangeRecord>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeGpioChangeRecord>`.
  List<GpioChangeRecord> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
