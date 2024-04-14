// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'creationcollisionoption.dart';
import 'idownloadsfolderstatics.dart';
import 'idownloadsfolderstatics2.dart';
import 'storagefile.dart';
import 'storagefolder.dart';

/// Creates files and folders inside the Downloads folder.
class DownloadsFolder extends IInspectable {
  DownloadsFolder.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.DownloadsFolder';

  static Future<StorageFile?> createFileAsync(String desiredName) =>
      createActivationFactory(IDownloadsFolderStatics.fromPtr, _className,
              IID_IDownloadsFolderStatics)
          .createFileAsync(desiredName);

  static Future<StorageFolder?> createFolderAsync(String desiredName) =>
      createActivationFactory(IDownloadsFolderStatics.fromPtr, _className,
              IID_IDownloadsFolderStatics)
          .createFolderAsync(desiredName);

  static Future<StorageFile?> createFileWithCollisionOptionAsync(
          String desiredName, CreationCollisionOption option) =>
      createActivationFactory(IDownloadsFolderStatics.fromPtr, _className,
              IID_IDownloadsFolderStatics)
          .createFileWithCollisionOptionAsync(desiredName, option);

  static Future<StorageFolder?> createFolderWithCollisionOptionAsync(
          String desiredName, CreationCollisionOption option) =>
      createActivationFactory(IDownloadsFolderStatics.fromPtr, _className,
              IID_IDownloadsFolderStatics)
          .createFolderWithCollisionOptionAsync(desiredName, option);

  static Future<StorageFile?> createFileForUserAsync(
          User? user, String desiredName) =>
      createActivationFactory(IDownloadsFolderStatics2.fromPtr, _className,
              IID_IDownloadsFolderStatics2)
          .createFileForUserAsync(user, desiredName);

  static Future<StorageFolder?> createFolderForUserAsync(
          User? user, String desiredName) =>
      createActivationFactory(IDownloadsFolderStatics2.fromPtr, _className,
              IID_IDownloadsFolderStatics2)
          .createFolderForUserAsync(user, desiredName);

  static Future<StorageFile?> createFileForUserWithCollisionOptionAsync(
          User? user, String desiredName, CreationCollisionOption option) =>
      createActivationFactory(IDownloadsFolderStatics2.fromPtr, _className,
              IID_IDownloadsFolderStatics2)
          .createFileForUserWithCollisionOptionAsync(user, desiredName, option);

  static Future<StorageFolder?> createFolderForUserWithCollisionOptionAsync(
          User? user, String desiredName, CreationCollisionOption option) =>
      createActivationFactory(IDownloadsFolderStatics2.fromPtr, _className,
              IID_IDownloadsFolderStatics2)
          .createFolderForUserWithCollisionOptionAsync(
              user, desiredName, option);
}
