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
import 'igeopoint.dart';
import 'igeopointfactory.dart';
import 'igeoshape.dart';
import 'structs.g.dart';

/// Describes a geographic point.
///
/// {@category class}
class Geopoint extends IInspectable implements IGeopoint, IGeoshape {
  Geopoint.fromRawPointer(super.ptr);

  static const _className = 'Windows.Devices.Geolocation.Geopoint';

  // IGeopointFactory methods
  factory Geopoint.create(BasicGeoposition position) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IGeopointFactory);
    final object = IGeopointFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(position);
    } finally {
      object.release();
    }
  }

  factory Geopoint.createWithAltitudeReferenceSystem(BasicGeoposition position,
      AltitudeReferenceSystem altitudeReferenceSystem) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IGeopointFactory);
    final object = IGeopointFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithAltitudeReferenceSystem(
          position, altitudeReferenceSystem);
    } finally {
      object.release();
    }
  }

  factory Geopoint.createWithAltitudeReferenceSystemAndSpatialReferenceId(
      BasicGeoposition position,
      AltitudeReferenceSystem altitudeReferenceSystem,
      int spatialReferenceId) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IGeopointFactory);
    final object = IGeopointFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createWithAltitudeReferenceSystemAndSpatialReferenceId(
          position, altitudeReferenceSystem, spatialReferenceId);
    } finally {
      object.release();
    }
  }

  // IGeopoint methods
  late final _iGeopoint = IGeopoint.from(this);

  @override
  BasicGeoposition get position => _iGeopoint.position;

  // IGeoshape methods
  late final _iGeoshape = IGeoshape.from(this);

  @override
  GeoshapeType get geoshapeType => _iGeoshape.geoshapeType;

  @override
  int get spatialReferenceId => _iGeoshape.spatialReferenceId;

  @override
  AltitudeReferenceSystem get altitudeReferenceSystem =>
      _iGeoshape.altitudeReferenceSystem;
}
