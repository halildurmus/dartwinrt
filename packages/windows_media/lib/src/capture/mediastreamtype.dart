// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies a type of stream on a media capture device.
enum MediaStreamType implements WinRTEnum {
  videoPreview(0),
  videoRecord(1),
  audio(2),
  photo(3),
  metadata(4);

  @override
  final int value;

  const MediaStreamType(this.value);

  factory MediaStreamType.from(int value) =>
      MediaStreamType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
