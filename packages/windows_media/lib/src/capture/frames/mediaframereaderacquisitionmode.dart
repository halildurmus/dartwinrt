// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the way that the system should manage frames acquired from a
/// MediaFrameReader or a MultiSourceMediaFrameReader when a new frame arrives
/// before the app has finished processing the previous frame.
enum MediaFrameReaderAcquisitionMode implements WinRTEnum {
  realtime(0),
  buffered(1);

  @override
  final int value;

  const MediaFrameReaderAcquisitionMode(this.value);

  factory MediaFrameReaderAcquisitionMode.from(int value) =>
      MediaFrameReaderAcquisitionMode.values.byValue(value);
}
