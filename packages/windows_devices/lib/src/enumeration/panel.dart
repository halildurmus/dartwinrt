// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the location of a panel on a computer. This enumeration is
/// used for indicating the physical location of a device.
enum Panel implements WinRTEnum {
  unknown(0),
  front(1),
  back(2),
  top(3),
  bottom(4),
  left(5),
  right(6);

  @override
  final int value;

  const Panel(this.value);

  factory Panel.from(int value) => Panel.values.byValue(value);
}
