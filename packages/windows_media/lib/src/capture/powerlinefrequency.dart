// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the local power line frequency.
enum PowerlineFrequency implements WinRTEnum {
  disabled(0),
  fiftyHertz(1),
  sixtyHertz(2),
  auto(3);

  @override
  final int value;

  const PowerlineFrequency(this.value);

  factory PowerlineFrequency.from(int value) =>
      PowerlineFrequency.values.byValue(value);
}
