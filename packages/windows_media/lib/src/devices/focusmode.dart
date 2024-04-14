// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the values for focus mode.
enum FocusMode implements WinRTEnum {
  auto(0),
  single(1),
  continuous(2),
  manual(3);

  @override
  final int value;

  const FocusMode(this.value);

  factory FocusMode.from(int value) => FocusMode.values.byValue(value);
}
