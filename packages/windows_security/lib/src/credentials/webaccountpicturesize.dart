// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the sizes of a web account picture.
enum WebAccountPictureSize implements WinRTEnum {
  size64x64(64),
  size208x208(208),
  size424x424(424),
  size1080x1080(1080);

  @override
  final int value;

  const WebAccountPictureSize(this.value);

  factory WebAccountPictureSize.from(int value) =>
      WebAccountPictureSize.values.byValue(value);
}
