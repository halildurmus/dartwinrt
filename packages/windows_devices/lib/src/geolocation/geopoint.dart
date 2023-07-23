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

import 'altitudereferencesystem.dart';
import 'basicgeoposition.dart';
import 'geoshapetype.dart';
import 'igeopoint.dart';
import 'igeopointfactory.dart';
import 'igeoshape.dart';

/// Describes a geographic point.
class Geopoint extends IInspectable implements IGeopoint, IGeoshape {
  Geopoint.fromPtr(super.ptr);

  static const _className = 'Windows.Devices.Geolocation.Geopoint';

  factory Geopoint.create(BasicGeoposition position) => createActivationFactory(
          IGeopointFactory.fromPtr, _className, IID_IGeopointFactory)
      .create(position);

  factory Geopoint.createWithAltitudeReferenceSystem(BasicGeoposition position,
          AltitudeReferenceSystem altitudeReferenceSystem) =>
      createActivationFactory(
              IGeopointFactory.fromPtr, _className, IID_IGeopointFactory)
          .createWithAltitudeReferenceSystem(position, altitudeReferenceSystem);

  factory Geopoint.createWithAltitudeReferenceSystemAndSpatialReferenceId(
          BasicGeoposition position,
          AltitudeReferenceSystem altitudeReferenceSystem,
          int spatialReferenceId) =>
      createActivationFactory(
              IGeopointFactory.fromPtr, _className, IID_IGeopointFactory)
          .createWithAltitudeReferenceSystemAndSpatialReferenceId(
              position, altitudeReferenceSystem, spatialReferenceId);

  late final _iGeopoint = IGeopoint.from(this);

  @override
  BasicGeoposition get position => _iGeopoint.position;

  late final _iGeoshape = IGeoshape.from(this);

  @override
  GeoshapeType get geoshapeType => _iGeoshape.geoshapeType;

  @override
  int get spatialReferenceId => _iGeoshape.spatialReferenceId;

  @override
  AltitudeReferenceSystem get altitudeReferenceSystem =>
      _iGeoshape.altitudeReferenceSystem;
}
