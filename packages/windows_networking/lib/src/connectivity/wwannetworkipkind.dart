// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines constants that describe a level of supported IP. The values reflect
/// the WWAN_IP_TYPE enumeration. You can use these values to determine which
/// cellular profile to use (for example, to choose between IMS and SUPL).
enum WwanNetworkIPKind implements WinRTEnum {
  none(0),
  ipv4(1),
  ipv6(2),
  ipv4v6(3),
  ipv4v6v4Xlat(4);

  @override
  final int value;

  const WwanNetworkIPKind(this.value);

  factory WwanNetworkIPKind.from(int value) =>
      WwanNetworkIPKind.values.byValue(value);
}
