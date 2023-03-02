// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names
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

/// Specifies whether to access a file in read-only mode or in read/write
/// mode.
///
/// {@category enum}
enum FileAccessMode implements WinRTEnum {
  read(0),
  readWrite(1);

  @override
  final int value;

  const FileAccessMode(this.value);

  factory FileAccessMode.from(int value) =>
      FileAccessMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

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

/// Provides values that identify storage folders.
///
/// {@category enum}
enum KnownFolderId implements WinRTEnum {
  appCaptures(0),
  cameraRoll(1),
  documentsLibrary(2),
  homeGroup(3),
  mediaServerDevices(4),
  musicLibrary(5),
  objects3D(6),
  picturesLibrary(7),
  playlists(8),
  recordedCalls(9),
  removableDevices(10),
  savedPictures(11),
  screenshots(12),
  videosLibrary(13),
  allAppMods(14),
  currentAppMods(15),
  downloadsFolder(16);

  @override
  final int value;

  const KnownFolderId(this.value);

  factory KnownFolderId.from(int value) =>
      KnownFolderId.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes a known folder's access to a single capability.
///
/// {@category enum}
enum KnownFoldersAccessStatus implements WinRTEnum {
  deniedBySystem(0),
  notDeclaredByApp(1),
  deniedByUser(2),
  userPromptRequired(3),
  allowed(4),
  allowedPerAppFolder(5);

  @override
  final int value;

  const KnownFoldersAccessStatus(this.value);

  factory KnownFoldersAccessStatus.from(int value) =>
      KnownFoldersAccessStatus.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
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

/// Provides options to use when opening a file.
///
/// {@category enum}
class StorageOpenOptions extends WinRTFlagsEnum<StorageOpenOptions> {
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
