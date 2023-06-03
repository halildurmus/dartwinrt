// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// The result of the unpairing action.
enum DeviceUnpairingResultStatus implements WinRTEnum {
  unpaired(0),
  alreadyUnpaired(1),
  operationAlreadyInProgress(2),
  accessDenied(3),
  failed(4);

  @override
  final int value;

  const DeviceUnpairingResultStatus(this.value);

  factory DeviceUnpairingResultStatus.from(int value) =>
      DeviceUnpairingResultStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
