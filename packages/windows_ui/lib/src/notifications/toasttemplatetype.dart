// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the template to use in a toast notification.
enum ToastTemplateType implements WinRTEnum {
  toastImageAndText01(0),
  toastImageAndText02(1),
  toastImageAndText03(2),
  toastImageAndText04(3),
  toastText01(4),
  toastText02(5),
  toastText03(6),
  toastText04(7);

  @override
  final int value;

  const ToastTemplateType(this.value);

  factory ToastTemplateType.from(int value) =>
      ToastTemplateType.values.byValue(value);
}
