// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the optical image stabilization modes.
enum OpticalImageStabilizationMode implements WinRTEnum {
  off(0),
  on(1),
  auto(2);

  @override
  final int value;

  const OpticalImageStabilizationMode(this.value);

  factory OpticalImageStabilizationMode.from(int value) =>
      OpticalImageStabilizationMode.values.byValue(value);
}
