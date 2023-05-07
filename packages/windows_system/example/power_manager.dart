// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_system/windows_system.dart';

void main() {
  switch (PowerManager.batteryStatus) {
    case BatteryStatus.charging:
      print('Battery is charging.');
    case BatteryStatus.discharging:
      print('Battery is discharging.');
    case BatteryStatus.idle:
      print('Battery is idle.');
    case BatteryStatus.notPresent:
      print('Battery is not present.');
  }

  switch (PowerManager.energySaverStatus) {
    case EnergySaverStatus.disabled:
      print('Energy saver is disabled.');
    case EnergySaverStatus.on:
      print('Energy saver is on.');
    case EnergySaverStatus.off:
      print('Energy saver is off.');
  }

  switch (PowerManager.powerSupplyStatus) {
    case PowerSupplyStatus.adequate:
      print('Power supply is adequate.');
    case PowerSupplyStatus.inadequate:
      print('Power supply is not adequate.');
    case PowerSupplyStatus.notPresent:
      print('Power supply is not present.');
  }

  print('Remaining charge percent: ${PowerManager.remainingChargePercent}%');

  if (PowerManager.batteryStatus == BatteryStatus.discharging) {
    final remainingDischargeTime =
        formatDuration(PowerManager.remainingDischargeTime);
    print('Remaining discharge time: $remainingDischargeTime');
  }
}

String formatDuration(Duration duration) {
  final HH = duration.inHours.toString().padLeft(2, '0');
  final mm = (duration.inMinutes % 60).toString().padLeft(2, '0');
  final ss = (duration.inSeconds % 60).toString().padLeft(2, '0');
  return '$HH:$mm:$ss';
}
