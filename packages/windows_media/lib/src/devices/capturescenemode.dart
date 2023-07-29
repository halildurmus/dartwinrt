// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the possible capture scene modes.
enum CaptureSceneMode implements WinRTEnum {
  auto(0),
  manual(1),
  macro(2),
  portrait(3),
  sport(4),
  snow(5),
  night(6),
  beach(7),
  sunset(8),
  candlelight(9),
  landscape(10),
  nightPortrait(11),
  backlit(12);

  @override
  final int value;

  const CaptureSceneMode(this.value);

  factory CaptureSceneMode.from(int value) =>
      CaptureSceneMode.values.byValue(value);
}
