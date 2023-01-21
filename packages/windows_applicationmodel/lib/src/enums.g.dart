// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the state (enabled, disabled, or disabled by user) of a
/// startup task.
///
/// {@category enum}
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
      StartupTaskState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
