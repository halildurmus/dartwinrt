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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'civicaddress.dart';
import 'geocoordinate.dart';
import 'igeoposition.dart';
import 'igeoposition2.dart';
import 'venuedata.dart';

/// Represents a location that may contain latitude and longitude data or
/// venue data.
///
/// {@category class}
class Geoposition extends IInspectable implements IGeoposition, IGeoposition2 {
  Geoposition.fromRawPointer(super.ptr);

  // IGeoposition methods
  late final _iGeoposition = IGeoposition.from(this);

  @override
  Geocoordinate? get coordinate => _iGeoposition.coordinate;

  @override
  CivicAddress? get civicAddress => _iGeoposition.civicAddress;

  // IGeoposition2 methods
  late final _iGeoposition2 = IGeoposition2.from(this);

  @override
  VenueData? get venueData => _iGeoposition2.venueData;
}
