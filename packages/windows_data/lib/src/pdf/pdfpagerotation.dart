// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the number of degrees that a page in a Portable Document Format
/// (PDF) document is rotated in the rendered output.
enum PdfPageRotation implements WinRTEnum {
  normal(0),
  rotate90(1),
  rotate180(2),
  rotate270(3);

  @override
  final int value;

  const PdfPageRotation(this.value);

  factory PdfPageRotation.from(int value) =>
      PdfPageRotation.values.byValue(value);
}
