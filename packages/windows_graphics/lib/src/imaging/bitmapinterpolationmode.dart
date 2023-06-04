// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the interpolation mode used for scaling pixel data.
enum BitmapInterpolationMode implements WinRTEnum {
  nearestNeighbor(0),
  linear(1),
  cubic(2),
  fant(3);

  @override
  final int value;

  const BitmapInterpolationMode(this.value);

  factory BitmapInterpolationMode.from(int value) =>
      BitmapInterpolationMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
