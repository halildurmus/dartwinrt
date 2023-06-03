// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the set of possible general window (app view) size preferences.
enum ViewSizePreference implements WinRTEnum {
  default_(0),
  useLess(1),
  useHalf(2),
  useMore(3),
  useMinimum(4),
  useNone(5),
  custom(6);

  @override
  final int value;

  const ViewSizePreference(this.value);

  factory ViewSizePreference.from(int value) =>
      ViewSizePreference.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
