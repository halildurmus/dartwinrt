// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the flip operation to be performed on pixel data.
enum BitmapFlip implements WinRTEnum {
  none(0),
  horizontal(1),
  vertical(2);

  @override
  final int value;

  const BitmapFlip(this.value);

  factory BitmapFlip.from(int value) =>
      BitmapFlip.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
