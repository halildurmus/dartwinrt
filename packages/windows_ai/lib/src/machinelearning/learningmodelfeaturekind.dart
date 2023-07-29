// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Input and output feature kinds for a machine learning model.
enum LearningModelFeatureKind implements WinRTEnum {
  tensor(0),
  sequence(1),
  map(2),
  image(3);

  @override
  final int value;

  const LearningModelFeatureKind(this.value);

  factory LearningModelFeatureKind.from(int value) =>
      LearningModelFeatureKind.values.byValue(value);
}
