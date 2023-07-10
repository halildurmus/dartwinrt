// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the format of a spherical video frame.
enum SphericalVideoFrameFormat implements WinRTEnum {
  none(0),
  unsupported(1),
  equirectangular(2);

  @override
  final int value;

  const SphericalVideoFrameFormat(this.value);

  factory SphericalVideoFrameFormat.from(int value) =>
      SphericalVideoFrameFormat.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
