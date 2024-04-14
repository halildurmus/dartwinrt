// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the values returned with a NetworkOperatorTetheringOperationResult
/// object to indicate the status of a tethering operation.
enum TetheringOperationStatus implements WinRTEnum {
  success(0),
  unknown(1),
  mobileBroadbandDeviceOff(2),
  wifiDeviceOff(3),
  entitlementCheckTimeout(4),
  entitlementCheckFailure(5),
  operationInProgress(6),
  bluetoothDeviceOff(7),
  networkLimitedConnectivity(8);

  @override
  final int value;

  const TetheringOperationStatus(this.value);

  factory TetheringOperationStatus.from(int value) =>
      TetheringOperationStatus.values.byValue(value);
}
