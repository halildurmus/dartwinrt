// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the values for the possible color temperature presets.
enum ColorTemperaturePreset implements WinRTEnum {
  auto(0),
  manual(1),
  cloudy(2),
  daylight(3),
  flash(4),
  fluorescent(5),
  tungsten(6),
  candlelight(7);

  @override
  final int value;

  const ColorTemperaturePreset(this.value);

  factory ColorTemperaturePreset.from(int value) =>
      ColorTemperaturePreset.values.byValue(value);
}
