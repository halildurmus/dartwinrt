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

import 'iregionsofinterestcontrol.dart';
import 'regionofinterest.dart';

/// Provides functionality to mange the regions of interest on a device.
class RegionsOfInterestControl extends IInspectable
    implements IRegionsOfInterestControl {
  RegionsOfInterestControl.fromPtr(super.ptr);

  late final _iRegionsOfInterestControl = IRegionsOfInterestControl.from(this);

  @override
  int get maxRegions => _iRegionsOfInterestControl.maxRegions;

  @override
  Future<void> setRegionsAsync(IIterable<RegionOfInterest?>? regions) =>
      _iRegionsOfInterestControl.setRegionsAsync(regions);

  @override
  Future<void> setRegionsWithLockAsync(
          IIterable<RegionOfInterest?>? regions, bool lockValues) =>
      _iRegionsOfInterestControl.setRegionsWithLockAsync(regions, lockValues);

  @override
  Future<void> clearRegionsAsync() =>
      _iRegionsOfInterestControl.clearRegionsAsync();

  @override
  bool get autoFocusSupported => _iRegionsOfInterestControl.autoFocusSupported;

  @override
  bool get autoWhiteBalanceSupported =>
      _iRegionsOfInterestControl.autoWhiteBalanceSupported;

  @override
  bool get autoExposureSupported =>
      _iRegionsOfInterestControl.autoExposureSupported;
}
