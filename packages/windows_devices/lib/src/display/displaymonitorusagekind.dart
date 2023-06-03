// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that specify the use to which the display is being
/// put.
enum DisplayMonitorUsageKind implements WinRTEnum {
  standard(0),
  headMounted(1),
  specialPurpose(2);

  @override
  final int value;

  const DisplayMonitorUsageKind(this.value);

  factory DisplayMonitorUsageKind.from(int value) =>
      DisplayMonitorUsageKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
