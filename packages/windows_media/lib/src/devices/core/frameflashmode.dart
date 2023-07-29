// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the flash mode for a frame in a variable photo sequence.
enum FrameFlashMode implements WinRTEnum {
  disable(0),
  enable(1),
  global(2);

  @override
  final int value;

  const FrameFlashMode(this.value);

  factory FrameFlashMode.from(int value) =>
      FrameFlashMode.values.byValue(value);
}
