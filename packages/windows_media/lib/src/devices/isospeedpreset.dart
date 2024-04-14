// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the possible values for ISO speed presets.
@Deprecated(
    "IsoSpeedPreset may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
enum IsoSpeedPreset implements WinRTEnum {
  auto(0),
  iso50(1),
  iso80(2),
  iso100(3),
  iso200(4),
  iso400(5),
  iso800(6),
  iso1600(7),
  iso3200(8),
  iso6400(9),
  iso12800(10),
  iso25600(11);

  @override
  final int value;

  const IsoSpeedPreset(this.value);

  factory IsoSpeedPreset.from(int value) =>
      IsoSpeedPreset.values.byValue(value);
}
