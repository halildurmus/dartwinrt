// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the media frame source sharing mode for a MediaCapture object.
enum MediaCaptureSharingMode implements WinRTEnum {
  exclusiveControl(0),
  sharedReadOnly(1);

  @override
  final int value;

  const MediaCaptureSharingMode(this.value);

  factory MediaCaptureSharingMode.from(int value) =>
      MediaCaptureSharingMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
