// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values used by the
/// NetworkOperatorTetheringManager.TetheringOperationalState property to
/// indicate the operational state of a device's tethering capabilities.
enum TetheringOperationalState implements WinRTEnum {
  unknown(0),
  on(1),
  off(2),
  inTransition(3);

  @override
  final int value;

  const TetheringOperationalState(this.value);

  factory TetheringOperationalState.from(int value) =>
      TetheringOperationalState.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
