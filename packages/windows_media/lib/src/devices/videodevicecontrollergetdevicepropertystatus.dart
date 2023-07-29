// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the status of an operation to get the value of a video device
/// controller driver property.
enum VideoDeviceControllerGetDevicePropertyStatus implements WinRTEnum {
  success(0),
  unknownFailure(1),
  bufferTooSmall(2),
  notSupported(3),
  deviceNotAvailable(4),
  maxPropertyValueSizeTooSmall(5),
  maxPropertyValueSizeRequired(6);

  @override
  final int value;

  const VideoDeviceControllerGetDevicePropertyStatus(this.value);

  factory VideoDeviceControllerGetDevicePropertyStatus.from(int value) =>
      VideoDeviceControllerGetDevicePropertyStatus.values.byValue(value);
}
