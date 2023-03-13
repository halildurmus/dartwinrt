// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values that can be returned after calling
/// NetworkOperatorTetheringManager.GetTetheringCapability to indicate the
/// tethering capabilities of a network account.
///
/// {@category enum}
enum TetheringCapability implements WinRTEnum {
  enabled(0),
  disabledByGroupPolicy(1),
  disabledByHardwareLimitation(2),
  disabledByOperator(3),
  disabledBySku(4),
  disabledByRequiredAppNotInstalled(5),
  disabledDueToUnknownCause(6),
  disabledBySystemCapability(7);

  @override
  final int value;

  const TetheringCapability(this.value);

  factory TetheringCapability.from(int value) =>
      TetheringCapability.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
