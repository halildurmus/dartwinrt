// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';

void printAudioDevice(DeviceInformation? device) {
  if (device == null) return;
  final DeviceInformation(:id, :name, :isDefault, :isEnabled) = device;
  print('Name: $name, isDefault: $isDefault, isEnabled: $isEnabled, ID: $id');
}

void main() async {
  // Identify all audio rendering devices on the system
  final audioRenderingDevices =
      await DeviceInformation.findAllAsyncDeviceClass(DeviceClass.audioRender);
  for (final device in audioRenderingDevices.toList()) {
    printAudioDevice(device);
  }
}
