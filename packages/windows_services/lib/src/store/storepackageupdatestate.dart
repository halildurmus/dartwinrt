// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values that represent the state of a package download or
/// installation request.
enum StorePackageUpdateState implements WinRTEnum {
  pending(0),
  downloading(1),
  deploying(2),
  completed(3),
  canceled(4),
  otherError(5),
  errorLowBattery(6),
  errorWiFiRecommended(7),
  errorWiFiRequired(8);

  @override
  final int value;

  const StorePackageUpdateState(this.value);

  factory StorePackageUpdateState.from(int value) =>
      StorePackageUpdateState.values.byValue(value);
}
