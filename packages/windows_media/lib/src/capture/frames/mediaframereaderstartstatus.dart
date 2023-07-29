// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the result of a call to StartAsync to start the reading of
/// media frames by a MediaFrameReader.
enum MediaFrameReaderStartStatus implements WinRTEnum {
  success(0),
  unknownFailure(1),
  deviceNotAvailable(2),
  outputFormatNotSupported(3),
  exclusiveControlNotAvailable(4);

  @override
  final int value;

  const MediaFrameReaderStartStatus(this.value);

  factory MediaFrameReaderStartStatus.from(int value) =>
      MediaFrameReaderStartStatus.values.byValue(value);
}
