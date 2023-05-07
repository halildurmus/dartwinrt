// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the type of change that occurred to the storage library item.
///
/// {@category enum}
enum StorageLibraryChangeType implements WinRTEnum {
  created(0),
  deleted(1),
  movedOrRenamed(2),
  contentsChanged(3),
  movedOutOfLibrary(4),
  movedIntoLibrary(5),
  contentsReplaced(6),
  indexingStatusChanged(7),
  encryptionChanged(8),
  changeTrackingLost(9);

  @override
  final int value;

  const StorageLibraryChangeType(this.value);

  factory StorageLibraryChangeType.from(int value) =>
      StorageLibraryChangeType.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
