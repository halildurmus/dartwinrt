// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the level of connectivity currently available.
///
/// {@category enum}
enum NetworkConnectivityLevel implements WinRTEnum {
  none(0),
  localAccess(1),
  constrainedInternetAccess(2),
  internetAccess(3);

  @override
  final int value;

  const NetworkConnectivityLevel(this.value);

  factory NetworkConnectivityLevel.from(int value) =>
      NetworkConnectivityLevel.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
