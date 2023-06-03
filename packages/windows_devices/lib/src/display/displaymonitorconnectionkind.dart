// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that specify an abstract method in which a display is
/// connected (not specific to a physical protocol).
enum DisplayMonitorConnectionKind implements WinRTEnum {
  internal(0),
  wired(1),
  wireless(2),
  virtual(3);

  @override
  final int value;

  const DisplayMonitorConnectionKind(this.value);

  factory DisplayMonitorConnectionKind.from(int value) =>
      DisplayMonitorConnectionKind.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
