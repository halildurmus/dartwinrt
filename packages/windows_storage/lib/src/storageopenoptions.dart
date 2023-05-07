// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Provides options to use when opening a file.
///
/// {@category enum}
final class StorageOpenOptions extends WinRTFlagsEnum<StorageOpenOptions> {
  const StorageOpenOptions(super.value, {super.name});

  factory StorageOpenOptions.from(int value) =>
      StorageOpenOptions.values.firstWhere((e) => e.value == value,
          orElse: () => StorageOpenOptions(value));

  static const none = StorageOpenOptions(0, name: 'none');
  static const allowOnlyReaders =
      StorageOpenOptions(1, name: 'allowOnlyReaders');
  static const allowReadersAndWriters =
      StorageOpenOptions(2, name: 'allowReadersAndWriters');

  static const List<StorageOpenOptions> values = [
    none,
    allowOnlyReaders,
    allowReadersAndWriters
  ];

  @override
  StorageOpenOptions operator &(StorageOpenOptions other) =>
      StorageOpenOptions(value & other.value);

  @override
  StorageOpenOptions operator |(StorageOpenOptions other) =>
      StorageOpenOptions(value | other.value);
}
