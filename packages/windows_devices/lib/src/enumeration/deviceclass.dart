// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the type of devices that the user wants to enumerate.
enum DeviceClass implements WinRTEnum {
  all(0),
  audioCapture(1),
  audioRender(2),
  portableStorageDevice(3),
  videoCapture(4),
  imageScanner(5),
  location(6);

  @override
  final int value;

  const DeviceClass(this.value);

  factory DeviceClass.from(int value) => DeviceClass.values.byValue(value);
}
