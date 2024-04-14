// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the limitations on tile or toast notification display.
enum NotificationSetting implements WinRTEnum {
  enabled(0),
  disabledForApplication(1),
  disabledForUser(2),
  disabledByGroupPolicy(3),
  disabledByManifest(4);

  @override
  final int value;

  const NotificationSetting(this.value);

  factory NotificationSetting.from(int value) =>
      NotificationSetting.values.byValue(value);
}
