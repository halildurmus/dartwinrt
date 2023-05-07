// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents user picture sizes.
///
/// {@category enum}
enum UserPictureSize implements WinRTEnum {
  size64x64(0),
  size208x208(1),
  size424x424(2),
  size1080x1080(3);

  @override
  final int value;

  const UserPictureSize(this.value);

  factory UserPictureSize.from(int value) =>
      UserPictureSize.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
