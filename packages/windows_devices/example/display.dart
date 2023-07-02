// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:windows_devices/windows_devices.dart';
import 'package:windows_graphics/windows_graphics.dart';

void printMonitorSpecs(DisplayMonitor? monitor) {
  if (monitor == null) return;
  print('Display name: ${monitor.displayName}');
  print('Monitor size: '
      '${monitor.physicalSizeInInches?.width.toStringAsFixed(1)}in x '
      '${monitor.physicalSizeInInches?.height.toStringAsFixed(1)}in');
  print('Monitor connection kind: ${monitor.connectionKind.name}');
  print('Monitor physical connection: ${monitor.physicalConnector.name}');
  print('Monitor usage kind: ${monitor.usageKind.name}');
  print('Monitor DPI: ${monitor.rawDpiX.ceil()} (X) / '
      '${monitor.rawDpiY.ceil()} (Y)');
  if (monitor.nativeResolutionInRawPixels
      case SizeInt32(:final height, :final width)) {
    print('Native resolution: ${width}px x ${height}px');
  }
  print('Monitor luminance range: ${monitor.minLuminanceInNits} '
      '- ${monitor.maxLuminanceInNits} nits');
}

void main() async {
  final deviceSelector = DisplayMonitor.getDeviceSelector();
  // Identify all display monitor devices on the system
  final deviceInformationCollection =
      await DeviceInformation.findAllAsyncAqsFilter(deviceSelector);
  for (final device in deviceInformationCollection.toList()) {
    if (device != null) {
      final monitor = await DisplayMonitor.fromInterfaceIdAsync(device.id);
      printMonitorSpecs(monitor);
    }
  }
}
