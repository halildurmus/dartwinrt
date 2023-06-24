// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// The basic information to describe a geographic position.
final class BasicGeoposition implements WinRTStruct {
  BasicGeoposition(this.latitude, this.longitude, this.altitude);

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
extension PointerNativeBasicGeopositionConversion
    on Pointer<NativeBasicGeoposition> {
  /// Converts this [NativeBasicGeoposition] to a Dart [BasicGeoposition].
  BasicGeoposition toDart() {
    final ref = this.ref;
    return BasicGeoposition(ref.latitude, ref.longitude, ref.altitude);
  }
}
