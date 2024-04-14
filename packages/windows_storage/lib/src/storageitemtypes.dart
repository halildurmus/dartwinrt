// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes whether an item that implements the IStorageItem interface is a
/// file or a folder.
final class StorageItemTypes extends WinRTFlagsEnum<StorageItemTypes> {
  const StorageItemTypes(super.value, {super.name});

  factory StorageItemTypes.from(int value) =>
      StorageItemTypes.values.firstWhere((e) => e.value == value,
          orElse: () => StorageItemTypes(value));

  static const none = StorageItemTypes(0, name: 'none');
  static const file = StorageItemTypes(1, name: 'file');
  static const folder = StorageItemTypes(2, name: 'folder');

  static const List<StorageItemTypes> values = [none, file, folder];

  @override
  StorageItemTypes operator &(StorageItemTypes other) =>
      StorageItemTypes(value & other.value);

  @override
  StorageItemTypes operator |(StorageItemTypes other) =>
      StorageItemTypes(value | other.value);
}
