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

/// Identifies the Human Interface Device (HID) usage details for the input
/// device.
final class PointerDeviceUsage implements WinRTStruct {
  const PointerDeviceUsage(
      this.usagePage,
      this.usage,
      this.minLogical,
      this.maxLogical,
      this.minPhysical,
      this.maxPhysical,
      this.unit,
      this.physicalMultiplier);

  final int usagePage;
  final int usage;
  final int minLogical;
  final int maxLogical;
  final int minPhysical;
  final int maxPhysical;
  final int unit;
  final double physicalMultiplier;

  @override
  Pointer<NativePointerDeviceUsage> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativePointerDeviceUsage>();
    nativeStructPtr.ref
      ..usagePage = usagePage
      ..usage = usage
      ..minLogical = minLogical
      ..maxLogical = maxLogical
      ..minPhysical = minPhysical
      ..maxPhysical = maxPhysical
      ..unit = unit
      ..physicalMultiplier = physicalMultiplier;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PointerDeviceUsage &&
        usagePage == other.usagePage &&
        usage == other.usage &&
        minLogical == other.minLogical &&
        maxLogical == other.maxLogical &&
        minPhysical == other.minPhysical &&
        maxPhysical == other.maxPhysical &&
        unit == other.unit &&
        physicalMultiplier == other.physicalMultiplier;
  }

  @override
  int get hashCode =>
      usagePage.hashCode ^
      usage.hashCode ^
      minLogical.hashCode ^
      maxLogical.hashCode ^
      minPhysical.hashCode ^
      maxPhysical.hashCode ^
      unit.hashCode ^
      physicalMultiplier.hashCode;
}

/// @nodoc
extension PointerDeviceUsageListToNativePointerDeviceUsageArrayConversion
    on List<PointerDeviceUsage> {
  /// Creates an array of [NativePointerDeviceUsage]s from a List of
  /// [PointerDeviceUsage]s.
  Pointer<NativePointerDeviceUsage> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativePointerDeviceUsage>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativePointerDeviceUsageConversion on NativePointerDeviceUsage {
  /// Converts this [NativePointerDeviceUsage] into a Dart [PointerDeviceUsage].
  PointerDeviceUsage toDart() => PointerDeviceUsage(
      usagePage,
      usage,
      minLogical,
      maxLogical,
      minPhysical,
      maxPhysical,
      unit,
      physicalMultiplier);
}

/// @nodoc
extension PointerNativePointerDeviceUsageConversion
    on Pointer<NativePointerDeviceUsage> {
  /// Converts the referenced [NativePointerDeviceUsage] into a Dart
  /// [PointerDeviceUsage].
  PointerDeviceUsage toDart() {
    final ref = this.ref;
    return PointerDeviceUsage(
        ref.usagePage,
        ref.usage,
        ref.minLogical,
        ref.maxLogical,
        ref.minPhysical,
        ref.maxPhysical,
        ref.unit,
        ref.physicalMultiplier);
  }

  /// Creates a `List<PointerDeviceUsage>` from
  /// `Pointer<NativePointerDeviceUsage>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativePointerDeviceUsage>`.
  List<PointerDeviceUsage> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) (this + i).toDart()];
}
