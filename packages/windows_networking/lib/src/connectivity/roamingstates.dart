// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the roaming states.
final class RoamingStates extends WinRTFlagsEnum<RoamingStates> {
  const RoamingStates(super.value, {super.name});

  factory RoamingStates.from(int value) => RoamingStates.values
      .firstWhere((e) => e.value == value, orElse: () => RoamingStates(value));

  static const none = RoamingStates(0, name: 'none');
  static const notRoaming = RoamingStates(1, name: 'notRoaming');
  static const roaming = RoamingStates(2, name: 'roaming');

  static const List<RoamingStates> values = [none, notRoaming, roaming];

  @override
  RoamingStates operator &(RoamingStates other) =>
      RoamingStates(value & other.value);

  @override
  RoamingStates operator |(RoamingStates other) =>
      RoamingStates(value | other.value);
}
