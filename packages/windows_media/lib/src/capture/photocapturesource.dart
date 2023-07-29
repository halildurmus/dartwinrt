// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies which stream on a video camera is used to capture photos.
enum PhotoCaptureSource implements WinRTEnum {
  auto(0),
  videoPreview(1),
  photo(2);

  @override
  final int value;

  const PhotoCaptureSource(this.value);

  factory PhotoCaptureSource.from(int value) =>
      PhotoCaptureSource.values.byValue(value);
}
