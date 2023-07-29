// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies where the context menu should be positioned relative to the
/// selection rectangle.
enum Placement implements WinRTEnum {
  default_(0),
  above(1),
  below(2),
  left(3),
  right(4);

  @override
  final int value;

  const Placement(this.value);

  factory Placement.from(int value) => Placement.values.byValue(value);
}
