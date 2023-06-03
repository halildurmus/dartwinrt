// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the lifecycle state of the device's spatial location system.
/// This lets an app know whether it can reason about the device's
/// orientation or its position in the user's surroundings.
enum SpatialLocatability implements WinRTEnum {
  unavailable(0),
  orientationOnly(1),
  positionalTrackingActivating(2),
  positionalTrackingActive(3),
  positionalTrackingInhibited(4);

  @override
  final int value;

  const SpatialLocatability(this.value);

  factory SpatialLocatability.from(int value) =>
      SpatialLocatability.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
