// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the Exchangeable Image File (EXIF) orientation flag of the
/// photo. This flag describes how to rotate the photo to display it
/// correctly.
enum PhotoOrientation implements WinRTEnum {
  unspecified(0),
  normal(1),
  flipHorizontal(2),
  rotate180(3),
  flipVertical(4),
  transpose(5),
  rotate270(6),
  transverse(7),
  rotate90(8);

  @override
  final int value;

  const PhotoOrientation(this.value);

  factory PhotoOrientation.from(int value) =>
      PhotoOrientation.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
