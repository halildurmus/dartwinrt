// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the requested accuracy level for the location data that the
/// application uses.
enum PositionAccuracy implements WinRTEnum {
  default_(0),
  high(1);

  @override
  final int value;

  const PositionAccuracy(this.value);

  factory PositionAccuracy.from(int value) =>
      PositionAccuracy.values.byValue(value);
}
