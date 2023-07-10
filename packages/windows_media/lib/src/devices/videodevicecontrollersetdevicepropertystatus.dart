// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the status of an operation to set the value of a video device
/// controller driver property.
enum VideoDeviceControllerSetDevicePropertyStatus implements WinRTEnum {
  success(0),
  unknownFailure(1),
  notSupported(2),
  invalidValue(3),
  deviceNotAvailable(4),
  notInControl(5);

  @override
  final int value;

  const VideoDeviceControllerSetDevicePropertyStatus(this.value);

  factory VideoDeviceControllerSetDevicePropertyStatus.from(int value) =>
      VideoDeviceControllerSetDevicePropertyStatus.values.firstWhere(
          (e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
