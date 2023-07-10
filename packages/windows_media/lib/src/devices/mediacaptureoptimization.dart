// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the optimizations that the media capture device can use.
enum MediaCaptureOptimization implements WinRTEnum {
  default_(0),
  quality(1),
  latency(2),
  power(3),
  latencyThenQuality(4),
  latencyThenPower(5),
  powerAndQuality(6);

  @override
  final int value;

  const MediaCaptureOptimization(this.value);

  factory MediaCaptureOptimization.from(int value) =>
      MediaCaptureOptimization.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
