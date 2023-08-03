// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the list of device kinds that can evaluate a machine learning model.
enum LearningModelDeviceKind implements WinRTEnum {
  default_(0),
  cpu(1),
  directX(2),
  directXHighPerformance(3),
  directXMinPower(4);

  @override
  final int value;

  const LearningModelDeviceKind(this.value);

  factory LearningModelDeviceKind.from(int value) =>
      LearningModelDeviceKind.values.byValue(value);
}
