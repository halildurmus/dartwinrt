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

/// The basic information to describe a geographic position.
final class BasicGeoposition implements WinRTStruct {
  const BasicGeoposition(this.latitude, this.longitude, this.altitude);

  final double latitude;
  final double longitude;
  final double altitude;

  @override
  Pointer<NativeBasicGeoposition> toNative({Allocator allocator = malloc}) {
    final nativeStructPtr = allocator<NativeBasicGeoposition>();
    nativeStructPtr.ref
      ..latitude = latitude
      ..longitude = longitude
      ..altitude = altitude;
    return nativeStructPtr;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BasicGeoposition &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        altitude == other.altitude;
  }

  @override
  int get hashCode =>
      latitude.hashCode ^ longitude.hashCode ^ altitude.hashCode;
}

/// @nodoc
extension BasicGeopositionListToNativeBasicGeopositionArrayConversion
    on List<BasicGeoposition> {
  /// Creates an array of [NativeBasicGeoposition]s from a List of
  /// [BasicGeoposition]s.
  Pointer<NativeBasicGeoposition> toArray({Allocator allocator = calloc}) {
    final array = allocator<NativeBasicGeoposition>(length);
    for (var i = 0; i < length; i++) {
      array[i] = this[i].toNative(allocator: allocator).ref;
    }
    return array;
  }
}

/// @nodoc
extension NativeBasicGeopositionConversion on NativeBasicGeoposition {
  /// Converts this [NativeBasicGeoposition] into a Dart [BasicGeoposition].
  BasicGeoposition toDart() => BasicGeoposition(latitude, longitude, altitude);
}

/// @nodoc
extension PointerNativeBasicGeopositionConversion
    on Pointer<NativeBasicGeoposition> {
  /// Converts the referenced [NativeBasicGeoposition] into a Dart
  /// [BasicGeoposition].
  BasicGeoposition toDart() {
    final ref = this.ref;
    return BasicGeoposition(ref.latitude, ref.longitude, ref.altitude);
  }

  /// Creates a `List<BasicGeoposition>` from
  /// `Pointer<NativeBasicGeoposition>`.
  ///
  /// [length] must not be greater than the number of elements stored inside the
  /// `Pointer<NativeBasicGeoposition>`.
  List<BasicGeoposition> toList({int length = 1}) =>
      [for (var i = 0; i < length; i++) elementAt(i).toDart()];
}
