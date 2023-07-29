// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the algorithm used to round numbers.
enum RoundingAlgorithm implements WinRTEnum {
  none(0),
  roundDown(1),
  roundUp(2),
  roundTowardsZero(3),
  roundAwayFromZero(4),
  roundHalfDown(5),
  roundHalfUp(6),
  roundHalfTowardsZero(7),
  roundHalfAwayFromZero(8),
  roundHalfToEven(9),
  roundHalfToOdd(10);

  @override
  final int value;

  const RoundingAlgorithm(this.value);

  factory RoundingAlgorithm.from(int value) =>
      RoundingAlgorithm.values.byValue(value);
}
