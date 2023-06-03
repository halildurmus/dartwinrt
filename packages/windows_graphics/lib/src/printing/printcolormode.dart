// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the color mode option.
enum PrintColorMode implements WinRTEnum {
  default_(0),
  notAvailable(1),
  printerCustom(2),
  color(3),
  grayscale(4),
  monochrome(5);

  @override
  final int value;

  const PrintColorMode(this.value);

  factory PrintColorMode.from(int value) =>
      PrintColorMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
