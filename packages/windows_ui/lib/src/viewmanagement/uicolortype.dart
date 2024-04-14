// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that specify known system color values.
enum UIColorType implements WinRTEnum {
  background(0),
  foreground(1),
  accentDark3(2),
  accentDark2(3),
  accentDark1(4),
  accent(5),
  accentLight1(6),
  accentLight2(7),
  accentLight3(8),
  complement(9);

  @override
  final int value;

  const UIColorType(this.value);

  factory UIColorType.from(int value) => UIColorType.values.byValue(value);
}
