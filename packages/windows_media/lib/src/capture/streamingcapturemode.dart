// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the streaming mode for a media capture device.
enum StreamingCaptureMode implements WinRTEnum {
  audioAndVideo(0),
  audio(1),
  video(2);

  @override
  final int value;

  const StreamingCaptureMode(this.value);

  factory StreamingCaptureMode.from(int value) =>
      StreamingCaptureMode.values.byValue(value);
}
