// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

enum ToastNotificationMode implements WinRTEnum {
  unrestricted(0),
  priorityOnly(1),
  alarmsOnly(2);

  @override
  final int value;

  const ToastNotificationMode(this.value);

  factory ToastNotificationMode.from(int value) =>
      ToastNotificationMode.values.byValue(value);
}
