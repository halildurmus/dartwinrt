// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that specify a wireless frequency band for a WiFi
/// adapter.
enum TetheringWiFiBand implements WinRTEnum {
  auto(0),
  twoPointFourGigahertz(1),
  fiveGigahertz(2);

  @override
  final int value;

  const TetheringWiFiBand(this.value);

  factory TetheringWiFiBand.from(int value) =>
      TetheringWiFiBand.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
