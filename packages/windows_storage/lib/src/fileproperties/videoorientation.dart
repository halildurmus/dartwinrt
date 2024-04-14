// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates how to rotate the video to display it correctly.
enum VideoOrientation implements WinRTEnum {
  normal(0),
  rotate90(90),
  rotate180(180),
  rotate270(270);

  @override
  final int value;

  const VideoOrientation(this.value);

  factory VideoOrientation.from(int value) =>
      VideoOrientation.values.byValue(value);
}
