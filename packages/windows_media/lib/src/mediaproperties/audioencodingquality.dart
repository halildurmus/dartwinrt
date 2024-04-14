// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the level of quality of the audio encoding. The higher the
/// quality, the better the audio fidelity, and the larger the resulting file.
enum AudioEncodingQuality implements WinRTEnum {
  auto(0),
  high(1),
  medium(2),
  low(3);

  @override
  final int value;

  const AudioEncodingQuality(this.value);

  factory AudioEncodingQuality.from(int value) =>
      AudioEncodingQuality.values.byValue(value);
}
