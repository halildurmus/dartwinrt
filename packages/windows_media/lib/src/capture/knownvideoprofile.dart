// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the names of video recording profiles that are known by the
/// system.
enum KnownVideoProfile implements WinRTEnum {
  videoRecording(0),
  highQualityPhoto(1),
  balancedVideoAndPhoto(2),
  videoConferencing(3),
  photoSequence(4),
  highFrameRate(5),
  variablePhotoSequence(6),
  hdrWithWcgVideo(7),
  hdrWithWcgPhoto(8),
  videoHdr8(9),
  compressedCamera(10);

  @override
  final int value;

  const KnownVideoProfile(this.value);

  factory KnownVideoProfile.from(int value) =>
      KnownVideoProfile.values.byValue(value);
}
