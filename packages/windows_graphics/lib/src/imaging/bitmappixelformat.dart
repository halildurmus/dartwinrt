// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the pixel format of pixel data. Each enumeration value defines a
/// channel ordering, bit depth, and data type.
enum BitmapPixelFormat implements WinRTEnum {
  unknown(0),
  rgba16(12),
  rgba8(30),
  gray16(57),
  gray8(62),
  bgra8(87),
  nv12(103),
  p010(104),
  yuy2(107);

  @override
  final int value;

  const BitmapPixelFormat(this.value);

  factory BitmapPixelFormat.from(int value) =>
      BitmapPixelFormat.values.byValue(value);
}
