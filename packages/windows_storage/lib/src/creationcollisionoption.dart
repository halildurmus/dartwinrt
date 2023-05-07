// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies what to do if a file or folder with the specified name already
/// exists in the current folder when you create a new file or folder.
///
/// {@category enum}
enum CreationCollisionOption implements WinRTEnum {
  generateUniqueName(0),
  replaceExisting(1),
  failIfExists(2),
  openIfExists(3);

  @override
  final int value;

  const CreationCollisionOption(this.value);

  factory CreationCollisionOption.from(int value) =>
      CreationCollisionOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
