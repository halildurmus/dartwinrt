// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import 'package:windows_foundation/windows_foundation.dart';

/// Describes the attributes of a file or folder.
///
/// {@category enum}
class FileAttributes extends WinRTFlagsEnum<FileAttributes> {
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

/// Specifies what to do if a file or folder with the specified name already
/// exists in the current folder when you copy, move, or rename a file or
/// folder.
///
/// {@category enum}
enum NameCollisionOption implements WinRTEnum {
  generateUniqueName(0),
  replaceExisting(1),
  failIfExists(2);

  @override
  final int value;

  const NameCollisionOption(this.value);

  factory NameCollisionOption.from(int value) =>
      NameCollisionOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies whether a deleted item is moved to the Recycle Bin or
/// permanently deleted.
///
/// {@category enum}
enum StorageDeleteOption implements WinRTEnum {
  default_(0),
  permanentDelete(1);

  @override
  final int value;

  const StorageDeleteOption(this.value);

  factory StorageDeleteOption.from(int value) =>
      StorageDeleteOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes whether an item that implements the IStorageItem interface is
/// a file or a folder.
///
/// {@category enum}
class StorageItemTypes extends WinRTFlagsEnum<StorageItemTypes> {
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
