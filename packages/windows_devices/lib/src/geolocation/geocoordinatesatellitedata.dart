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

import 'igeocoordinatesatellitedata.dart';
import 'igeocoordinatesatellitedata2.dart';

/// Provides additional information about a Geocoordinate. This information
/// is only applicable to position estimates obtained using satellite
/// signals.
///
/// {@category class}
class GeocoordinateSatelliteData extends IInspectable
    implements IGeocoordinateSatelliteData, IGeocoordinateSatelliteData2 {
  GeocoordinateSatelliteData.fromRawPointer(super.ptr);

  // IGeocoordinateSatelliteData methods
  late final _iGeocoordinateSatelliteData =
      IGeocoordinateSatelliteData.from(this);

  @override
  double? get positionDilutionOfPrecision =>
      _iGeocoordinateSatelliteData.positionDilutionOfPrecision;

  @override
  double? get horizontalDilutionOfPrecision =>
      _iGeocoordinateSatelliteData.horizontalDilutionOfPrecision;

  @override
  double? get verticalDilutionOfPrecision =>
      _iGeocoordinateSatelliteData.verticalDilutionOfPrecision;

  // IGeocoordinateSatelliteData2 methods
  late final _iGeocoordinateSatelliteData2 =
      IGeocoordinateSatelliteData2.from(this);

  @override
  double? get geometricDilutionOfPrecision =>
      _iGeocoordinateSatelliteData2.geometricDilutionOfPrecision;

  @override
  double? get timeDilutionOfPrecision =>
      _iGeocoordinateSatelliteData2.timeDilutionOfPrecision;
}
