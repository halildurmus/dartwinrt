// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the values for the possible focus presets.
enum FocusPreset implements WinRTEnum {
  auto(0),
  manual(1),
  autoMacro(2),
  autoNormal(3),
  autoInfinity(4),
  autoHyperfocal(5);

  @override
  final int value;

  const FocusPreset(this.value);

  factory FocusPreset.from(int value) => FocusPreset.values.byValue(value);
}
