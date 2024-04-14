// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the stereoscopic video packing mode of a video stream.
enum StereoscopicVideoPackingMode implements WinRTEnum {
  none(0),
  sideBySide(1),
  topBottom(2);

  @override
  final int value;

  const StereoscopicVideoPackingMode(this.value);

  factory StereoscopicVideoPackingMode.from(int value) =>
      StereoscopicVideoPackingMode.values.byValue(value);
}
