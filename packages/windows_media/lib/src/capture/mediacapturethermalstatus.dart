// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the thermal status of a media capture device.
enum MediaCaptureThermalStatus implements WinRTEnum {
  normal(0),
  overheated(1);

  @override
  final int value;

  const MediaCaptureThermalStatus(this.value);

  factory MediaCaptureThermalStatus.from(int value) =>
      MediaCaptureThermalStatus.values.byValue(value);
}
