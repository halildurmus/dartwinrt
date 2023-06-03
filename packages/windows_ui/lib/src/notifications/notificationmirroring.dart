// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies whether notification mirroring is allowed. Mirroring enables a
/// notification to be displayed on multiple devices.
enum NotificationMirroring implements WinRTEnum {
  allowed(0),
  disabled(1);

  @override
  final int value;

  const NotificationMirroring(this.value);

  factory NotificationMirroring.from(int value) =>
      NotificationMirroring.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
