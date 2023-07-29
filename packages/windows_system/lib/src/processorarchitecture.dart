// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the processor architecture supported by an app.
enum ProcessorArchitecture implements WinRTEnum {
  x86(0),
  arm(5),
  x64(9),
  neutral(11),
  arm64(12),
  x86OnArm64(14),
  unknown(65535);

  @override
  final int value;

  const ProcessorArchitecture(this.value);

  factory ProcessorArchitecture.from(int value) =>
      ProcessorArchitecture.values.byValue(value);
}
