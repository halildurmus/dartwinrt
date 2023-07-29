// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the condition under which exclusive access to the camera is
/// released.
enum MediaCaptureDeviceExclusiveControlReleaseMode implements WinRTEnum {
  onDispose(0),
  onAllStreamsStopped(1);

  @override
  final int value;

  const MediaCaptureDeviceExclusiveControlReleaseMode(this.value);

  factory MediaCaptureDeviceExclusiveControlReleaseMode.from(int value) =>
      MediaCaptureDeviceExclusiveControlReleaseMode.values.byValue(value);
}
