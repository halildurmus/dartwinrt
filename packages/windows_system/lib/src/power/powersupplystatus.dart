// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the device's power supply status.
enum PowerSupplyStatus implements WinRTEnum {
  notPresent(0),
  inadequate(1),
  adequate(2);

  @override
  final int value;

  const PowerSupplyStatus(this.value);

  factory PowerSupplyStatus.from(int value) =>
      PowerSupplyStatus.values.byValue(value);
}
