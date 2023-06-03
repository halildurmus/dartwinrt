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

import 'iknownfolderscamerarollstatics.dart';
import 'iknownfoldersplaylistsstatics.dart';
import 'iknownfolderssavedpicturesstatics.dart';
import 'iknownfoldersstatics.dart';
import 'iknownfoldersstatics2.dart';
import 'iknownfoldersstatics3.dart';
import 'iknownfoldersstatics4.dart';
import 'knownfolderid.dart';
import 'knownfoldersaccessstatus.dart';
import 'storagefolder.dart';

/// Provides access to common locations that contain user content. This
/// includes content from a user's local libraries (such as Documents,
/// Pictures, Music, and Videos), HomeGroup, removable devices, and media
/// server devices.
class KnownFolders extends IInspectable {
  KnownFolders.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.KnownFolders';

  static StorageFolder? get cameraRoll => createActivationFactory(
          IKnownFoldersCameraRollStatics.fromPtr,
          _className,
          IID_IKnownFoldersCameraRollStatics)
      .cameraRoll;

  static StorageFolder? get playlists => createActivationFactory(
          IKnownFoldersPlaylistsStatics.fromPtr,
          _className,
          IID_IKnownFoldersPlaylistsStatics)
      .playlists;

  static StorageFolder? get savedPictures => createActivationFactory(
          IKnownFoldersSavedPicturesStatics.fromPtr,
          _className,
          IID_IKnownFoldersSavedPicturesStatics)
      .savedPictures;

  static StorageFolder? get musicLibrary => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .musicLibrary;

  static StorageFolder? get picturesLibrary => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .picturesLibrary;

  static StorageFolder? get videosLibrary => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .videosLibrary;

  static StorageFolder? get documentsLibrary => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .documentsLibrary;

  static StorageFolder? get homeGroup => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .homeGroup;

  static StorageFolder? get removableDevices => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .removableDevices;

  static StorageFolder? get mediaServerDevices => createActivationFactory(
          IKnownFoldersStatics.fromPtr, _className, IID_IKnownFoldersStatics)
      .mediaServerDevices;

  static StorageFolder? get objects3D => createActivationFactory(
          IKnownFoldersStatics2.fromPtr, _className, IID_IKnownFoldersStatics2)
      .objects3D;

  static StorageFolder? get appCaptures => createActivationFactory(
          IKnownFoldersStatics2.fromPtr, _className, IID_IKnownFoldersStatics2)
      .appCaptures;

  static StorageFolder? get recordedCalls => createActivationFactory(
          IKnownFoldersStatics2.fromPtr, _className, IID_IKnownFoldersStatics2)
      .recordedCalls;

  static Future<StorageFolder?> getFolderForUserAsync(
          User? user, KnownFolderId folderId) =>
      createActivationFactory(IKnownFoldersStatics3.fromPtr, _className,
              IID_IKnownFoldersStatics3)
          .getFolderForUserAsync(user, folderId);

  static Future<KnownFoldersAccessStatus> requestAccessAsync(
          KnownFolderId folderId) =>
      createActivationFactory(IKnownFoldersStatics4.fromPtr, _className,
              IID_IKnownFoldersStatics4)
          .requestAccessAsync(folderId);

  static Future<KnownFoldersAccessStatus> requestAccessForUserAsync(
          User? user, KnownFolderId folderId) =>
      createActivationFactory(IKnownFoldersStatics4.fromPtr, _className,
              IID_IKnownFoldersStatics4)
          .requestAccessForUserAsync(user, folderId);

  static Future<StorageFolder?> getFolderAsync(KnownFolderId folderId) =>
      createActivationFactory(IKnownFoldersStatics4.fromPtr, _className,
              IID_IKnownFoldersStatics4)
          .getFolderAsync(folderId);
}
