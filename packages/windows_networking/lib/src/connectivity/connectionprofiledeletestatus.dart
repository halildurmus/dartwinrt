// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values that indicate the result of an attempt to delete a
/// connection profile.
///
/// {@category enum}
enum ConnectionProfileDeleteStatus implements WinRTEnum {
  success(0),
  deniedByUser(1),
  deniedBySystem(2),
  unknownError(3);

  @override
  final int value;

  const ConnectionProfileDeleteStatus(this.value);

  factory ConnectionProfileDeleteStatus.from(int value) =>
      ConnectionProfileDeleteStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
