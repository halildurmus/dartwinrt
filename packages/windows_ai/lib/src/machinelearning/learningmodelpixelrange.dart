// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the list of image nominal pixel range suppored by Windows ML.
/// The proper value is specified in a machine learning model's metadata.
enum LearningModelPixelRange implements WinRTEnum {
  zeroTo255(0),
  zeroToOne(1),
  minusOneToOne(2);

  @override
  final int value;

  const LearningModelPixelRange(this.value);

  factory LearningModelPixelRange.from(int value) =>
      LearningModelPixelRange.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
