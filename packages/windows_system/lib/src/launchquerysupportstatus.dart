// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies whether an app is available that supports activation.
enum LaunchQuerySupportStatus implements WinRTEnum {
  available(0),
  appNotInstalled(1),
  appUnavailable(2),
  notSupported(3),
  unknown(4);

  @override
  final int value;

  const LaunchQuerySupportStatus(this.value);

  factory LaunchQuerySupportStatus.from(int value) =>
      LaunchQuerySupportStatus.values.byValue(value);
}
