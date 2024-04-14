// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Defines the state of a camera stream.
enum CameraStreamState implements WinRTEnum {
  notStreaming(0),
  streaming(1),
  blockedForPrivacy(2),
  shutdown(3);

  @override
  final int value;

  const CameraStreamState(this.value);

  factory CameraStreamState.from(int value) =>
      CameraStreamState.values.byValue(value);
}
