// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';

void main() async {
  final audioRenderingDevices =
      await DeviceInformation.findAllAsyncDeviceClass(DeviceClass.audioRender);
  if (audioRenderingDevices.size == 0) {
    print('No audio rendering devices found.');
    return;
  }

  final audioRenderingDevicesList = audioRenderingDevices.toList();
  print('Found ${audioRenderingDevicesList.length} audio rendering device(s):');
  for (final DeviceInformation(:name, :isDefault, :isEnabled, :id)
      in audioRenderingDevicesList) {
    print('  Name: $name | isDefault: $isDefault | isEnabled: $isEnabled | '
        'ID: $id');
  }
}
