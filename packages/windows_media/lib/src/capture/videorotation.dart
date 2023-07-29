// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the rotation of the video stream.
enum VideoRotation implements WinRTEnum {
  none(0),
  clockwise90Degrees(1),
  clockwise180Degrees(2),
  clockwise270Degrees(3);

  @override
  final int value;

  const VideoRotation(this.value);

  factory VideoRotation.from(int value) => VideoRotation.values.byValue(value);
}
