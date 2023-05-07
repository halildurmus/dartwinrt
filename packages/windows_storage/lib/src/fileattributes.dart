// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the attributes of a file or folder.
///
/// {@category enum}
final class FileAttributes extends WinRTFlagsEnum<FileAttributes> {
  const FileAttributes(super.value, {super.name});

  factory FileAttributes.from(int value) => FileAttributes.values
      .firstWhere((e) => e.value == value, orElse: () => FileAttributes(value));

  static const normal = FileAttributes(0, name: 'normal');
  static const readOnly = FileAttributes(1, name: 'readOnly');
  static const directory = FileAttributes(16, name: 'directory');
  static const archive = FileAttributes(32, name: 'archive');
  static const temporary = FileAttributes(256, name: 'temporary');
  static const locallyIncomplete =
      FileAttributes(512, name: 'locallyIncomplete');

  static const List<FileAttributes> values = [
    normal,
    readOnly,
    directory,
    archive,
    temporary,
    locallyIncomplete
  ];

  @override
  FileAttributes operator &(FileAttributes other) =>
      FileAttributes(value & other.value);

  @override
  FileAttributes operator |(FileAttributes other) =>
      FileAttributes(value | other.value);
}
