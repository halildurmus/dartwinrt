// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the set of directional preferences for the user interface
/// presented by the app view.
enum HandPreference implements WinRTEnum {
  leftHanded(0),
  rightHanded(1);

  @override
  final int value;

  const HandPreference(this.value);

  factory HandPreference.from(int value) =>
      HandPreference.values.byValue(value);
}
