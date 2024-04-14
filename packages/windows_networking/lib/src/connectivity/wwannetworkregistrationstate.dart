// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the network registration states for a WWAN connection.
enum WwanNetworkRegistrationState implements WinRTEnum {
  none(0),
  deregistered(1),
  searching(2),
  home(3),
  roaming(4),
  partner(5),
  denied(6);

  @override
  final int value;

  const WwanNetworkRegistrationState(this.value);

  factory WwanNetworkRegistrationState.from(int value) =>
      WwanNetworkRegistrationState.values.byValue(value);
}
