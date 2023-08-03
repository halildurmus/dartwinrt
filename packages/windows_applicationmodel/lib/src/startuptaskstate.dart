// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the state (enabled, disabled, or disabled by user) of a startup
/// task.
enum StartupTaskState implements WinRTEnum {
  disabled(0),
  disabledByUser(1),
  enabled(2),
  disabledByPolicy(3),
  enabledByPolicy(4);

  @override
  final int value;

  const StartupTaskState(this.value);

  factory StartupTaskState.from(int value) =>
      StartupTaskState.values.byValue(value);
}
