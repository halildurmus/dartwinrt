// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Determines the video encoding format.
enum VideoEncodingQuality implements WinRTEnum {
  auto(0),
  hd1080p(1),
  hd720p(2),
  wvga(3),
  ntsc(4),
  pal(5),
  vga(6),
  qvga(7),
  uhd2160p(8),
  uhd4320p(9);

  @override
  final int value;

  const VideoEncodingQuality(this.value);

  factory VideoEncodingQuality.from(int value) =>
      VideoEncodingQuality.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
