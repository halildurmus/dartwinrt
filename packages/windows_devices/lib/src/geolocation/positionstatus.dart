// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the ability of the Geolocator object to provide location data.
enum PositionStatus implements WinRTEnum {
  ready(0),
  initializing(1),
  noData(2),
  disabled(3),
  notInitialized(4),
  notAvailable(5);

  @override
  final int value;

  const PositionStatus(this.value);

  factory PositionStatus.from(int value) =>
      PositionStatus.values.byValue(value);
}
