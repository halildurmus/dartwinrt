// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the options for auto focus range.
enum AutoFocusRange implements WinRTEnum {
  fullRange(0),
  macro(1),
  normal(2);

  @override
  final int value;

  const AutoFocusRange(this.value);

  factory AutoFocusRange.from(int value) =>
      AutoFocusRange.values.byValue(value);
}
