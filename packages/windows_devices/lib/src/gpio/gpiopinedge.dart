// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the possible types of change that can occur to the value of
/// the general-purpose I/O (GPIO) pin for the GpioPin.ValueChanged event.
enum GpioPinEdge implements WinRTEnum {
  fallingEdge(0),
  risingEdge(1);

  @override
  final int value;

  const GpioPinEdge(this.value);

  factory GpioPinEdge.from(int value) =>
      GpioPinEdge.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
