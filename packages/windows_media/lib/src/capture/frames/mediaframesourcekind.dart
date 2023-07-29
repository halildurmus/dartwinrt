// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the kind of data produced by a MediaFrameSource.
enum MediaFrameSourceKind implements WinRTEnum {
  custom(0),
  color(1),
  infrared(2),
  depth(3),
  audio(4),
  image(5),
  metadata(6);

  @override
  final int value;

  const MediaFrameSourceKind(this.value);

  factory MediaFrameSourceKind.from(int value) =>
      MediaFrameSourceKind.values.byValue(value);
}
