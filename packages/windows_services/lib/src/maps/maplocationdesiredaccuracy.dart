// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the desired accuracy to use when converting latitude and longitude
/// coordinates to a physical location like a city or address.
enum MapLocationDesiredAccuracy implements WinRTEnum {
  high(0),
  low(1);

  @override
  final int value;

  const MapLocationDesiredAccuracy(this.value);

  factory MapLocationDesiredAccuracy.from(int value) =>
      MapLocationDesiredAccuracy.values.byValue(value);
}
