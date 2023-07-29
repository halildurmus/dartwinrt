// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the different types of regions of interest that can be detected
/// the capture device.
enum RegionOfInterestType implements WinRTEnum {
  unknown(0),
  face(1);

  @override
  final int value;

  const RegionOfInterestType(this.value);

  factory RegionOfInterestType.from(int value) =>
      RegionOfInterestType.values.byValue(value);
}
