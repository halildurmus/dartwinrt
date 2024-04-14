// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// The level of protection for pairing.
enum DevicePairingProtectionLevel implements WinRTEnum {
  default_(0),
  none(1),
  encryption(2),
  encryptionAndAuthentication(3);

  @override
  final int value;

  const DevicePairingProtectionLevel(this.value);

  factory DevicePairingProtectionLevel.from(int value) =>
      DevicePairingProtectionLevel.values.byValue(value);
}
