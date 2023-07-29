// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that specify a physical connector standard used to
/// connect a display.
enum DisplayMonitorPhysicalConnectorKind implements WinRTEnum {
  unknown(0),
  hd15(1),
  analogTV(2),
  dvi(3),
  hdmi(4),
  lvds(5),
  sdi(6),
  displayPort(7);

  @override
  final int value;

  const DisplayMonitorPhysicalConnectorKind(this.value);

  factory DisplayMonitorPhysicalConnectorKind.from(int value) =>
      DisplayMonitorPhysicalConnectorKind.values.byValue(value);
}
