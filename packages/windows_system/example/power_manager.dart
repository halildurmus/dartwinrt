// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_system/windows_system.dart';

void main() {
  print('Battery is ${PowerManager.batteryStatus.name}');
  print('Energy saver is ${PowerManager.energySaverStatus.name}');
  print('Power supply is ${PowerManager.powerSupplyStatus.name}');
  print('Remaining charge percent: ${PowerManager.remainingChargePercent}%');
  if (PowerManager.powerSupplyStatus == PowerSupplyStatus.notPresent) {
    print('Remaining discharge time: ${PowerManager.remainingDischargeTime}');
  }
}
