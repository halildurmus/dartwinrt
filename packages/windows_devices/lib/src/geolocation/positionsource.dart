// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the source used to obtain a Geocoordinate.
enum PositionSource implements WinRTEnum {
  cellular(0),
  satellite(1),
  wifi(2),
  ipAddress(3),
  unknown(4),
  default_(5),
  obfuscated(6);

  @override
  final int value;

  const PositionSource(this.value);

  factory PositionSource.from(int value) =>
      PositionSource.values.byValue(value);
}
