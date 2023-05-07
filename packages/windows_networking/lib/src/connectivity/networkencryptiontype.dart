// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values that indicate the type of encryption used for
/// authentication.
///
/// {@category enum}
enum NetworkEncryptionType implements WinRTEnum {
  none(0),
  unknown(1),
  wep(2),
  wep40(3),
  wep104(4),
  tkip(5),
  ccmp(6),
  wpaUseGroup(7),
  rsnUseGroup(8),
  ihv(9),
  gcmp(10),
  gcmp256(11);

  @override
  final int value;

  const NetworkEncryptionType(this.value);

  factory NetworkEncryptionType.from(int value) =>
      NetworkEncryptionType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
