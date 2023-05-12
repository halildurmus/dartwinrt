// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';

void printBatteryReport(Battery? battery) async {
  final report = battery?.getReport();
  if (report
      case BatteryReport(
        :final chargeRateInMilliwatts,
        :final designCapacityInMilliwattHours,
        :final fullChargeCapacityInMilliwattHours,
        :final remainingCapacityInMilliwattHours
      )) {
    print('Charge rate (mW): $chargeRateInMilliwatts');
    print('Design energy capacity (mWh): $designCapacityInMilliwattHours');
    print(
        'Fully-charged energy capacity (mWh): $fullChargeCapacityInMilliwattHours');
    print(
        'Remaining energy capacity (mWh): $remainingCapacityInMilliwattHours');
  }
}

void main() async {
  // Identify all battery devices on the system
  final batteryDevices = await DeviceInformation.findAllAsyncAqsFilter(
      Battery.getDeviceSelector());
  for (final batteryDevice in batteryDevices.toList()) {
    final battery = await Battery.fromIdAsync(batteryDevice.id);
    printBatteryReport(battery);
  }
}
