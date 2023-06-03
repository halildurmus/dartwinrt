// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'geocoordinatesatellitedata.dart';
import 'geopoint.dart';
import 'igeocoordinate.dart';
import 'igeocoordinatewithpoint.dart';
import 'igeocoordinatewithpositiondata.dart';
import 'igeocoordinatewithpositionsourcetimestamp.dart';
import 'igeocoordinatewithremotesource.dart';
import 'positionsource.dart';

/// Contains the information for identifying a geographic location.
class Geocoordinate extends IInspectable
    implements
        IGeocoordinate,
        IGeocoordinateWithPositionData,
        IGeocoordinateWithPoint,
        IGeocoordinateWithPositionSourceTimestamp,
        IGeocoordinateWithRemoteSource {
  Geocoordinate.fromPtr(super.ptr);

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

  late final _iGeocoordinateWithPositionData =
      IGeocoordinateWithPositionData.from(this);

  @override
  PositionSource get positionSource =>
      _iGeocoordinateWithPositionData.positionSource;

  @override
  GeocoordinateSatelliteData? get satelliteData =>
      _iGeocoordinateWithPositionData.satelliteData;

  late final _iGeocoordinateWithPoint = IGeocoordinateWithPoint.from(this);

  @override
  Geopoint? get point => _iGeocoordinateWithPoint.point;

  late final _iGeocoordinateWithPositionSourceTimestamp =
      IGeocoordinateWithPositionSourceTimestamp.from(this);

  @override
  DateTime? get positionSourceTimestamp =>
      _iGeocoordinateWithPositionSourceTimestamp.positionSourceTimestamp;

  late final _iGeocoordinateWithRemoteSource =
      IGeocoordinateWithRemoteSource.from(this);

  @override
  bool get isRemoteSource => _iGeocoordinateWithRemoteSource.isRemoteSource;
}
