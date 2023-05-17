// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';

void main() async {
  // Identify all audio rendering devices on the system
  final audioRenderingDevices =
      await DeviceInformation.findAllAsyncDeviceClass(DeviceClass.audioRender);
  for (final DeviceInformation(:name, :isDefault, :isEnabled, :id)
      in audioRenderingDevices.toList()) {
    print(
        'Device name: $name, isDefault: $isDefault, isEnabled: $isEnabled, ID: $id');
  }
}
