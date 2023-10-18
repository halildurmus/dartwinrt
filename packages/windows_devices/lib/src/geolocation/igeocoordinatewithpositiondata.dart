// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'geocoordinatesatellitedata.dart';
import 'igeocoordinate.dart';
import 'positionsource.dart';

/// @nodoc
const IID_IGeocoordinateWithPositionData =
    '{95e634be-dbd6-40ac-b8f2-a65c0340d9a6}';

class IGeocoordinateWithPositionData extends IInspectable
    implements IGeocoordinate {
  IGeocoordinateWithPositionData.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IGeocoordinateWithPositionDataVtbl>().ref;

  final _IGeocoordinateWithPositionDataVtbl _vtable;

  factory IGeocoordinateWithPositionData.from(IInspectable interface) =>
      interface.cast(IGeocoordinateWithPositionData.fromPtr,
          IID_IGeocoordinateWithPositionData);

  PositionSource get positionSource {
    final pValue = calloc<Int32>();

    try {
      final hr = _vtable.get_PositionSource.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> pValue)>()(lpVtbl, pValue);

      if (FAILED(hr)) throwWindowsException(hr);

      return PositionSource.from(pValue.value);
    } finally {
      free(pValue);
    }
  }

  GeocoordinateSatelliteData? get satelliteData {
    final ppValue = calloc<COMObject>();

    final hr = _vtable.get_SatelliteData.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> ppValue)>()(
        lpVtbl, ppValue);

    if (FAILED(hr)) {
      free(ppValue);
      throwWindowsException(hr);
    }

    if (ppValue.isNull) {
      free(ppValue);
      return null;
    }

    return GeocoordinateSatelliteData.fromPtr(ppValue);
  }

  late final _iGeocoordinate = IGeocoordinate.from(this);

  @Deprecated(
      "Latitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Latitude")
  @override
  double get latitude => _iGeocoordinate.latitude;

  @Deprecated(
      "Longitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Longitude")
  @override
  double get longitude => _iGeocoordinate.longitude;

  @Deprecated(
      "Altitude may be altered or unavailable after Windows 8.1. Instead, use Point.Position.Altitude")
  @override
  double? get altitude => _iGeocoordinate.altitude;

  @override
  double get accuracy => _iGeocoordinate.accuracy;

  @override
  double? get altitudeAccuracy => _iGeocoordinate.altitudeAccuracy;

  @override
  double? get heading => _iGeocoordinate.heading;

  @override
  double? get speed => _iGeocoordinate.speed;

  @override
  DateTime get timestamp => _iGeocoordinate.timestamp;
}

final class _IGeocoordinateWithPositionDataVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> pValue)>>
      get_PositionSource;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> ppValue)>>
      get_SatelliteData;
}
