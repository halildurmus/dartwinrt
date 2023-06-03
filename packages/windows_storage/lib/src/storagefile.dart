// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'fileaccessmode.dart';
import 'fileattributes.dart';
import 'fileproperties/basicproperties.dart';
import 'fileproperties/storageitemcontentproperties.dart';
import 'fileproperties/storageitemthumbnail.dart';
import 'fileproperties/thumbnailmode.dart';
import 'fileproperties/thumbnailoptions.dart';
import 'istoragefile.dart';
import 'istoragefile2.dart';
import 'istoragefilepropertieswithavailability.dart';
import 'istoragefilestatics.dart';
import 'istoragefilestatics2.dart';
import 'istoragefolder.dart';
import 'istorageitem.dart';
import 'istorageitem2.dart';
import 'istorageitemproperties.dart';
import 'istorageitemproperties2.dart';
import 'istorageitempropertieswithprovider.dart';
import 'namecollisionoption.dart';
import 'storagedeleteoption.dart';
import 'storagefolder.dart';
import 'storageitemtypes.dart';
import 'storageopenoptions.dart';
import 'storageprovider.dart';
import 'storagestreamtransaction.dart';
import 'streams/iinputstream.dart';
import 'streams/iinputstreamreference.dart';
import 'streams/irandomaccessstream.dart';
import 'streams/irandomaccessstreamreference.dart';
import 'streams/irandomaccessstreamwithcontenttype.dart';

/// Represents a file. Provides information about the file and its content,
/// and ways to manipulate them.
class StorageFile extends IInspectable
    implements
        IStorageFile,
        IInputStreamReference,
        IRandomAccessStreamReference,
        IStorageItem,
        IStorageItemProperties,
        IStorageItemProperties2,
        IStorageItem2,
        IStorageItemPropertiesWithProvider,
        IStorageFilePropertiesWithAvailability,
        IStorageFile2 {
  StorageFile.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.StorageFile';

  static Future<StorageFile?> getFileFromPathAsync(String path) =>
      createActivationFactory(
              IStorageFileStatics.fromPtr, _className, IID_IStorageFileStatics)
          .getFileFromPathAsync(path);

  static Future<StorageFile?> getFileFromApplicationUriAsync(Uri? uri) =>
      createActivationFactory(
              IStorageFileStatics.fromPtr, _className, IID_IStorageFileStatics)
          .getFileFromApplicationUriAsync(uri);

  static Future<StorageFile?> createStreamedFileAsync(
          String displayNameWithExtension,
          Pointer<COMObject> dataRequested,
          IRandomAccessStreamReference? thumbnail) =>
      createActivationFactory(
              IStorageFileStatics.fromPtr, _className, IID_IStorageFileStatics)
          .createStreamedFileAsync(
              displayNameWithExtension, dataRequested, thumbnail);

  static Future<StorageFile?> replaceWithStreamedFileAsync(
          IStorageFile? fileToReplace,
          Pointer<COMObject> dataRequested,
          IRandomAccessStreamReference? thumbnail) =>
      createActivationFactory(
              IStorageFileStatics.fromPtr, _className, IID_IStorageFileStatics)
          .replaceWithStreamedFileAsync(
              fileToReplace, dataRequested, thumbnail);

  static Future<StorageFile?> createStreamedFileFromUriAsync(
          String displayNameWithExtension,
          Uri? uri,
          IRandomAccessStreamReference? thumbnail) =>
      createActivationFactory(
              IStorageFileStatics.fromPtr, _className, IID_IStorageFileStatics)
          .createStreamedFileFromUriAsync(
              displayNameWithExtension, uri, thumbnail);

  static Future<StorageFile?> replaceWithStreamedFileFromUriAsync(
          IStorageFile? fileToReplace,
          Uri? uri,
          IRandomAccessStreamReference? thumbnail) =>
      createActivationFactory(
              IStorageFileStatics.fromPtr, _className, IID_IStorageFileStatics)
          .replaceWithStreamedFileFromUriAsync(fileToReplace, uri, thumbnail);

  static Future<StorageFile?> getFileFromPathForUserAsync(
          User? user, String path) =>
      createActivationFactory(IStorageFileStatics2.fromPtr, _className,
              IID_IStorageFileStatics2)
          .getFileFromPathForUserAsync(user, path);

  late final _iStorageFile = IStorageFile.from(this);

  @override
  String get fileType => _iStorageFile.fileType;

  @override
  String get contentType => _iStorageFile.contentType;

  @override
  Future<IRandomAccessStream?> openAsync(FileAccessMode accessMode) =>
      _iStorageFile.openAsync(accessMode);

  @override
  Future<StorageStreamTransaction?> openTransactedWriteAsync() =>
      _iStorageFile.openTransactedWriteAsync();

  @override
  Future<StorageFile?> copyOverloadDefaultNameAndOptions(
          IStorageFolder? destinationFolder) =>
      _iStorageFile.copyOverloadDefaultNameAndOptions(destinationFolder);

  @override
  Future<StorageFile?> copyOverloadDefaultOptions(
          IStorageFolder? destinationFolder, String desiredNewName) =>
      _iStorageFile.copyOverloadDefaultOptions(
          destinationFolder, desiredNewName);

  @override
  Future<StorageFile?> copyOverload(IStorageFolder? destinationFolder,
          String desiredNewName, NameCollisionOption option) =>
      _iStorageFile.copyOverload(destinationFolder, desiredNewName, option);

  @override
  Future<void> copyAndReplaceAsync(IStorageFile? fileToReplace) =>
      _iStorageFile.copyAndReplaceAsync(fileToReplace);

  @override
  Future<void> moveOverloadDefaultNameAndOptions(
          IStorageFolder? destinationFolder) =>
      _iStorageFile.moveOverloadDefaultNameAndOptions(destinationFolder);

  @override
  Future<void> moveOverloadDefaultOptions(
          IStorageFolder? destinationFolder, String desiredNewName) =>
      _iStorageFile.moveOverloadDefaultOptions(
          destinationFolder, desiredNewName);

  @override
  Future<void> moveOverload(IStorageFolder? destinationFolder,
          String desiredNewName, NameCollisionOption option) =>
      _iStorageFile.moveOverload(destinationFolder, desiredNewName, option);

  @override
  Future<void> moveAndReplaceAsync(IStorageFile? fileToReplace) =>
      _iStorageFile.moveAndReplaceAsync(fileToReplace);

  late final _iInputStreamReference = IInputStreamReference.from(this);

  @override
  Future<IInputStream?> openSequentialReadAsync() =>
      _iInputStreamReference.openSequentialReadAsync();

  late final _iRandomAccessStreamReference =
      IRandomAccessStreamReference.from(this);

  @override
  Future<IRandomAccessStreamWithContentType?> openReadAsync() =>
      _iRandomAccessStreamReference.openReadAsync();

  late final _iStorageItem = IStorageItem.from(this);

  @override
  Future<void> renameAsyncOverloadDefaultOptions(String desiredName) =>
      _iStorageItem.renameAsyncOverloadDefaultOptions(desiredName);

  @override
  Future<void> renameAsync(String desiredName, NameCollisionOption option) =>
      _iStorageItem.renameAsync(desiredName, option);

  @override
  Future<void> deleteAsyncOverloadDefaultOptions() =>
      _iStorageItem.deleteAsyncOverloadDefaultOptions();

  @override
  Future<void> deleteAsync(StorageDeleteOption option) =>
      _iStorageItem.deleteAsync(option);

  @override
  Future<BasicProperties?> getBasicPropertiesAsync() =>
      _iStorageItem.getBasicPropertiesAsync();

  @override
  String get name => _iStorageItem.name;

  @override
  String get path => _iStorageItem.path;

  @override
  FileAttributes get attributes => _iStorageItem.attributes;

  @override
  DateTime get dateCreated => _iStorageItem.dateCreated;

  @override
  bool isOfType(StorageItemTypes type) => _iStorageItem.isOfType(type);

  late final _iStorageItemProperties = IStorageItemProperties.from(this);

  @override
  Future<StorageItemThumbnail?>
      getThumbnailAsyncOverloadDefaultSizeDefaultOptions(ThumbnailMode mode) =>
          _iStorageItemProperties
              .getThumbnailAsyncOverloadDefaultSizeDefaultOptions(mode);

  @override
  Future<StorageItemThumbnail?> getThumbnailAsyncOverloadDefaultOptions(
          ThumbnailMode mode, int requestedSize) =>
      _iStorageItemProperties.getThumbnailAsyncOverloadDefaultOptions(
          mode, requestedSize);

  @override
  Future<StorageItemThumbnail?> getThumbnailAsync(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iStorageItemProperties.getThumbnailAsync(mode, requestedSize, options);

  @override
  String get displayName => _iStorageItemProperties.displayName;

  @override
  String get displayType => _iStorageItemProperties.displayType;

  @override
  String get folderRelativeId => _iStorageItemProperties.folderRelativeId;

  @override
  StorageItemContentProperties? get properties =>
      _iStorageItemProperties.properties;

  late final _iStorageItemProperties2 = IStorageItemProperties2.from(this);

  @override
  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(
              ThumbnailMode mode) =>
          _iStorageItemProperties2
              .getScaledImageAsThumbnailAsyncOverloadDefaultSizeDefaultOptions(
                  mode);

  @override
  Future<StorageItemThumbnail?>
      getScaledImageAsThumbnailAsyncOverloadDefaultOptions(
              ThumbnailMode mode, int requestedSize) =>
          _iStorageItemProperties2
              .getScaledImageAsThumbnailAsyncOverloadDefaultOptions(
                  mode, requestedSize);

  @override
  Future<StorageItemThumbnail?> getScaledImageAsThumbnailAsync(
          ThumbnailMode mode, int requestedSize, ThumbnailOptions options) =>
      _iStorageItemProperties2.getScaledImageAsThumbnailAsync(
          mode, requestedSize, options);

  late final _iStorageItem2 = IStorageItem2.from(this);

  @override
  Future<StorageFolder?> getParentAsync() => _iStorageItem2.getParentAsync();

  @override
  bool isEqual(IStorageItem? item) => _iStorageItem2.isEqual(item);

  late final _iStorageItemPropertiesWithProvider =
      IStorageItemPropertiesWithProvider.from(this);

  @override
  StorageProvider? get provider => _iStorageItemPropertiesWithProvider.provider;

  late final _iStorageFilePropertiesWithAvailability =
      IStorageFilePropertiesWithAvailability.from(this);

  @override
  bool get isAvailable => _iStorageFilePropertiesWithAvailability.isAvailable;

  late final _iStorageFile2 = IStorageFile2.from(this);

  @override
  Future<IRandomAccessStream?> openWithOptionsAsync(
          FileAccessMode accessMode, StorageOpenOptions options) =>
      _iStorageFile2.openWithOptionsAsync(accessMode, options);

  @override
  Future<StorageStreamTransaction?> openTransactedWriteWithOptionsAsync(
          StorageOpenOptions options) =>
      _iStorageFile2.openTransactedWriteWithOptionsAsync(options);
}
