// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'geocoordinatesatellitedata.dart';
import 'geopoint.dart';
import 'igeocoordinate.dart';
import 'igeocoordinatewithpoint.dart';
import 'igeocoordinatewithpositiondata.dart';
import 'igeocoordinatewithpositionsourcetimestamp.dart';

/// Contains the information for identifying a geographic location.
///
/// {@category class}
class Geocoordinate extends IInspectable
    implements
        IGeocoordinate,
        IGeocoordinateWithPositionData,
        IGeocoordinateWithPoint,
        IGeocoordinateWithPositionSourceTimestamp {
  Geocoordinate.fromRawPointer(super.ptr);

  // IGeocoordinate methods
  late final _iGeocoordinate = IGeocoordinate.from(this);

  @override
  double get latitude => _iGeocoordinate.latitude;

  @override
  double get longitude => _iGeocoordinate.longitude;

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

  // IGeocoordinateWithPositionData methods
  late final _iGeocoordinateWithPositionData =
      IGeocoordinateWithPositionData.from(this);

  @override
  PositionSource get positionSource =>
      _iGeocoordinateWithPositionData.positionSource;

  @override
  GeocoordinateSatelliteData? get satelliteData =>
      _iGeocoordinateWithPositionData.satelliteData;

  // IGeocoordinateWithPoint methods
  late final _iGeocoordinateWithPoint = IGeocoordinateWithPoint.from(this);

  @override
  Geopoint? get point => _iGeocoordinateWithPoint.point;

  // IGeocoordinateWithPositionSourceTimestamp methods
  late final _iGeocoordinateWithPositionSourceTimestamp =
      IGeocoordinateWithPositionSourceTimestamp.from(this);

  @override
  DateTime? get positionSourceTimestamp =>
      _iGeocoordinateWithPositionSourceTimestamp.positionSourceTimestamp;
}
