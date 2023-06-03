// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the intended format for the day of the week in a
/// DateTimeFormatter object.
enum DayOfWeekFormat implements WinRTEnum {
  none(0),
  default_(1),
  abbreviated(2),
  full(3);

  @override
  final int value;

  const DayOfWeekFormat(this.value);

  factory DayOfWeekFormat.from(int value) =>
      DayOfWeekFormat.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
