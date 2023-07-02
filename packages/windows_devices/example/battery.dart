// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';

void printBatteryReport(Battery? battery) {
  final report = battery?.getReport();
  if (report == null) return;
  final BatteryReport(
    :chargeRateInMilliwatts,
    :designCapacityInMilliwattHours,
    :fullChargeCapacityInMilliwattHours,
    :remainingCapacityInMilliwattHours
  ) = report;
  print('Charge rate (mW): $chargeRateInMilliwatts');
  print('Design energy capacity (mWh): $designCapacityInMilliwattHours');
  print(
      'Fully-charged energy capacity (mWh): $fullChargeCapacityInMilliwattHours');
  print('Remaining energy capacity (mWh): $remainingCapacityInMilliwattHours');
}

void main() async {
  final deviceSelector = Battery.getDeviceSelector();
  // Identify all battery devices on the system
  final batteryDevices =
      await DeviceInformation.findAllAsyncAqsFilter(deviceSelector);
  for (final batteryDevice in batteryDevices.toList()) {
    if (batteryDevice != null) {
      final battery = await Battery.fromIdAsync(batteryDevice.id);
      printBatteryReport(battery);
    }
  }
}
