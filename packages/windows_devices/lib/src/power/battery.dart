// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'batteryreport.dart';
import 'ibattery.dart';
import 'ibatterystatics.dart';

/// Provides information about a battery controller that is currently connected
/// to the device. For more info, see Get battery information.
class Battery extends IInspectable implements IBattery {
  Battery.fromPtr(super.ptr);

  static const _className = 'Windows.Devices.Power.Battery';

  static Battery? get aggregateBattery => createActivationFactory(
          IBatteryStatics.fromPtr, _className, IID_IBatteryStatics)
      .aggregateBattery;

  static Future<Battery?> fromIdAsync(String deviceId) =>
      createActivationFactory(
              IBatteryStatics.fromPtr, _className, IID_IBatteryStatics)
          .fromIdAsync(deviceId);

  static String getDeviceSelector() => createActivationFactory(
          IBatteryStatics.fromPtr, _className, IID_IBatteryStatics)
      .getDeviceSelector();

  late final _iBattery = IBattery.from(this);

  @override
  String get deviceId => _iBattery.deviceId;

  @override
  BatteryReport? getReport() => _iBattery.getReport();

  @override
  int add_ReportUpdated(Pointer<COMObject> handler) =>
      _iBattery.add_ReportUpdated(handler);

  @override
  void remove_ReportUpdated(int token) => _iBattery.remove_ReportUpdated(token);
}
