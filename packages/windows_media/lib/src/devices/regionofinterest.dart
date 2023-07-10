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

import 'iregionofinterest.dart';
import 'iregionofinterest2.dart';
import 'regionofinteresttype.dart';

/// Represents a region of interest which is a rectangular region on the
/// image which is used for functions such as focus and exposure.
class RegionOfInterest extends IInspectable
    implements IRegionOfInterest, IRegionOfInterest2 {
  RegionOfInterest() : super(activateClass(_className));
  RegionOfInterest.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Devices.RegionOfInterest';

  late final _iRegionOfInterest = IRegionOfInterest.from(this);

  @override
  bool get autoFocusEnabled => _iRegionOfInterest.autoFocusEnabled;

  @override
  set autoFocusEnabled(bool value) =>
      _iRegionOfInterest.autoFocusEnabled = value;

  @override
  bool get autoWhiteBalanceEnabled =>
      _iRegionOfInterest.autoWhiteBalanceEnabled;

  @override
  set autoWhiteBalanceEnabled(bool value) =>
      _iRegionOfInterest.autoWhiteBalanceEnabled = value;

  @override
  bool get autoExposureEnabled => _iRegionOfInterest.autoExposureEnabled;

  @override
  set autoExposureEnabled(bool value) =>
      _iRegionOfInterest.autoExposureEnabled = value;

  @override
  Rect get bounds => _iRegionOfInterest.bounds;

  @override
  set bounds(Rect value) => _iRegionOfInterest.bounds = value;

  late final _iRegionOfInterest2 = IRegionOfInterest2.from(this);

  @override
  RegionOfInterestType get type => _iRegionOfInterest2.type;

  @override
  set type(RegionOfInterestType value) => _iRegionOfInterest2.type = value;

  @override
  bool get boundsNormalized => _iRegionOfInterest2.boundsNormalized;

  @override
  set boundsNormalized(bool value) =>
      _iRegionOfInterest2.boundsNormalized = value;

  @override
  int get weight => _iRegionOfInterest2.weight;

  @override
  set weight(int value) => _iRegionOfInterest2.weight = value;
}
