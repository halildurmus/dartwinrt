// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Indicates whether all files and subfolders of the folder being queried
/// will be enumerated or if only the top-level files and subfolders will be
/// enumerated.
///
/// {@category enum}
enum FolderDepth implements WinRTEnum {
  shallow(0),
  deep(1);

  @override
  final int value;

  const FolderDepth(this.value);

  factory FolderDepth.from(int value) =>
      FolderDepth.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
