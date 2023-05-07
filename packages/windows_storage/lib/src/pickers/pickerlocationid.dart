// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Identifies the storage location that the file picker presents to the
/// user.
///
/// {@category enum}
enum PickerLocationId implements WinRTEnum {
  documentsLibrary(0),
  computerFolder(1),
  desktop(2),
  downloads(3),
  homeGroup(4),
  musicLibrary(5),
  picturesLibrary(6),
  videosLibrary(7),
  objects3D(8),
  unspecified(9);

  @override
  final int value;

  const PickerLocationId(this.value);

  factory PickerLocationId.from(int value) =>
      PickerLocationId.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
