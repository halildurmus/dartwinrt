// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

import 'gpiopinedge.dart';

/// Stores a relative timestap of a general-purpose I/O (GPIO) pin value
/// change, and whether the pin transitioned from low to high or from high
/// to low.
final class GpioChangeRecord implements WinRTStruct {
  const GpioChangeRecord(this.relativeTime, this.edge);

  final Duration relativeTime;
  final GpioPinEdge edge;

  @override
  Pointer<NativeGpioChangeRecord> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeGpioChangeRecord>();
    nativeStructPtr.ref
      ..relativeTime = relativeTime.toWinRTDuration()
      ..edge = edge.value;
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
extension GpioChangeRecordListToNativeGpioChangeRecordArrayConversion
    on List<GpioChangeRecord> {
  /// Creates an array of [NativeGpioChangeRecord]s from a List of
  /// [GpioChangeRecord]s.
  Pointer<NativeGpioChangeRecord> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeGpioChangeRecord>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeGpioChangeRecordConversion on NativeGpioChangeRecord {
  /// Converts this [NativeGpioChangeRecord] into a Dart [GpioChangeRecord].
  GpioChangeRecord toDart() =>
      GpioChangeRecord(relativeTime.toDartDuration(), GpioPinEdge.from(edge));
}

/// @nodoc
extension PointerNativeGpioChangeRecordConversion
    on Pointer<NativeGpioChangeRecord> {
  /// Converts the referenced [NativeGpioChangeRecord] into a Dart
  /// [GpioChangeRecord].
  GpioChangeRecord toDart() {
    final ref = this.ref;
    return GpioChangeRecord(
        ref.relativeTime.toDartDuration(), GpioPinEdge.from(ref.edge));
  }

  /// Creates a `List<GpioChangeRecord>` from
  /// `Pointer<NativeGpioChangeRecord>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeGpioChangeRecord>`.
  List<GpioChangeRecord> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
