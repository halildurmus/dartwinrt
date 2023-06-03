// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates the view mode that the file picker is using to present items.
enum PickerViewMode implements WinRTEnum {
  list(0),
  thumbnail(1);

  @override
  final int value;

  const PickerViewMode(this.value);

  factory PickerViewMode.from(int value) =>
      PickerViewMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
