// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the status of the battery.
///
/// {@category enum}
enum BatteryStatus implements WinRTEnum {
  notPresent(0),
  discharging(1),
  idle(2),
  charging(3);

  @override
  final int value;

  const BatteryStatus(this.value);

  factory BatteryStatus.from(int value) =>
      BatteryStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies the status of battery saver.
///
/// {@category enum}
enum EnergySaverStatus implements WinRTEnum {
  disabled(0),
  off(1),
  on(2);

  @override
  final int value;

  const EnergySaverStatus(this.value);

  factory EnergySaverStatus.from(int value) =>
      EnergySaverStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Represents the device's power supply status.
///
/// {@category enum}
enum PowerSupplyStatus implements WinRTEnum {
  notPresent(0),
  inadequate(1),
  adequate(2);

  @override
  final int value;

  const PowerSupplyStatus(this.value);

  factory PowerSupplyStatus.from(int value) =>
      PowerSupplyStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
