// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines values for media pixel formats.
enum MediaPixelFormat implements WinRTEnum {
  nv12(0),
  bgra8(1),
  p010(2);

  @override
  final int value;

  const MediaPixelFormat(this.value);

  factory MediaPixelFormat.from(int value) =>
      MediaPixelFormat.values.byValue(value);
}
