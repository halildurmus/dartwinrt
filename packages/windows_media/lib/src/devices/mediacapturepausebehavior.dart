// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the behavior when media capture is paused with a call to PauseAsync
/// or PauseRecordAsync.
enum MediaCapturePauseBehavior implements WinRTEnum {
  retainHardwareResources(0),
  releaseHardwareResources(1);

  @override
  final int value;

  const MediaCapturePauseBehavior(this.value);

  factory MediaCapturePauseBehavior.from(int value) =>
      MediaCapturePauseBehavior.values.byValue(value);
}
