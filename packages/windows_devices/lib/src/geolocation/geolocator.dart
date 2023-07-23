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

import 'basicgeoposition.dart';
import 'geolocationaccessstatus.dart';
import 'geoposition.dart';
import 'igeolocator.dart';
import 'igeolocator2.dart';
import 'igeolocatorstatics.dart';
import 'igeolocatorstatics2.dart';
import 'igeolocatorwithscalaraccuracy.dart';
import 'positionaccuracy.dart';
import 'positionstatus.dart';

/// Provides access to the current geographic location.
class Geolocator extends IInspectable
    implements IGeolocator, IGeolocatorWithScalarAccuracy, IGeolocator2 {
  Geolocator() : super(activateClass(_className));
  Geolocator.fromPtr(super.ptr);

  static const _className = 'Windows.Devices.Geolocation.Geolocator';

  static Future<GeolocationAccessStatus> requestAccessAsync() =>
      createActivationFactory(
              IGeolocatorStatics.fromPtr, _className, IID_IGeolocatorStatics)
          .requestAccessAsync();

  static Future<List<Geoposition?>> getGeopositionHistoryAsync(
          DateTime startTime) =>
      createActivationFactory(
              IGeolocatorStatics.fromPtr, _className, IID_IGeolocatorStatics)
          .getGeopositionHistoryAsync(startTime);

  static Future<List<Geoposition?>> getGeopositionHistoryWithDurationAsync(
          DateTime startTime, Duration duration) =>
      createActivationFactory(
              IGeolocatorStatics.fromPtr, _className, IID_IGeolocatorStatics)
          .getGeopositionHistoryWithDurationAsync(startTime, duration);

  static bool get isDefaultGeopositionRecommended => createActivationFactory(
          IGeolocatorStatics2.fromPtr, _className, IID_IGeolocatorStatics2)
      .isDefaultGeopositionRecommended;

  static set defaultGeoposition(BasicGeoposition? value) =>
      createActivationFactory(
              IGeolocatorStatics2.fromPtr, _className, IID_IGeolocatorStatics2)
          .defaultGeoposition = value;

  static BasicGeoposition? get defaultGeoposition => createActivationFactory(
          IGeolocatorStatics2.fromPtr, _className, IID_IGeolocatorStatics2)
      .defaultGeoposition;

  late final _iGeolocator = IGeolocator.from(this);

  @override
  PositionAccuracy get desiredAccuracy => _iGeolocator.desiredAccuracy;

  @override
  set desiredAccuracy(PositionAccuracy value) =>
      _iGeolocator.desiredAccuracy = value;

  @override
  double get movementThreshold => _iGeolocator.movementThreshold;

  @override
  set movementThreshold(double value) => _iGeolocator.movementThreshold = value;

  @override
  int get reportInterval => _iGeolocator.reportInterval;

  @override
  set reportInterval(int value) => _iGeolocator.reportInterval = value;

  @override
  PositionStatus get locationStatus => _iGeolocator.locationStatus;

  @override
  Future<Geoposition?> getGeopositionAsync() =>
      _iGeolocator.getGeopositionAsync();

  @override
  Future<Geoposition?> getGeopositionAsyncWithAgeAndTimeout(
          Duration maximumAge, Duration timeout) =>
      _iGeolocator.getGeopositionAsyncWithAgeAndTimeout(maximumAge, timeout);

  @override
  int add_PositionChanged(Pointer<COMObject> handler) =>
      _iGeolocator.add_PositionChanged(handler);

  @override
  void remove_PositionChanged(int token) =>
      _iGeolocator.remove_PositionChanged(token);

  @override
  int add_StatusChanged(Pointer<COMObject> handler) =>
      _iGeolocator.add_StatusChanged(handler);

  @override
  void remove_StatusChanged(int token) =>
      _iGeolocator.remove_StatusChanged(token);

  late final _iGeolocatorWithScalarAccuracy =
      IGeolocatorWithScalarAccuracy.from(this);

  @override
  int? get desiredAccuracyInMeters =>
      _iGeolocatorWithScalarAccuracy.desiredAccuracyInMeters;

  @override
  set desiredAccuracyInMeters(int? value) =>
      _iGeolocatorWithScalarAccuracy.desiredAccuracyInMeters = value;

  late final _iGeolocator2 = IGeolocator2.from(this);

  @override
  void allowFallbackToConsentlessPositions() =>
      _iGeolocator2.allowFallbackToConsentlessPositions();
}
