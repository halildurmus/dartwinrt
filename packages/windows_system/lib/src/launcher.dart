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
import 'package:windows_applicationmodel/windows_applicationmodel.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_storage/windows_storage.dart';

import 'folderlauncheroptions.dart';
import 'ilauncherstatics.dart';
import 'ilauncherstatics2.dart';
import 'ilauncherstatics3.dart';
import 'ilauncherstatics4.dart';
import 'ilauncherstatics5.dart';
import 'launcheroptions.dart';
import 'launchquerysupportstatus.dart';
import 'launchquerysupporttype.dart';
import 'launchuriresult.dart';
import 'launchuristatus.dart';
import 'user.dart';

/// Starts the default app associated with the specified file or URI.
class Launcher extends IInspectable {
  Launcher.fromPtr(super.ptr);

  static const _className = 'Windows.System.Launcher';

  static Future<bool> launchFileAsync(IStorageFile? file) =>
      createActivationFactory(
              ILauncherStatics.fromPtr, _className, IID_ILauncherStatics)
          .launchFileAsync(file);

  static Future<bool> launchFileWithOptionsAsync(
          IStorageFile? file, LauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics.fromPtr, _className, IID_ILauncherStatics)
          .launchFileWithOptionsAsync(file, options);

  static Future<bool> launchUriAsync(Uri? uri) => createActivationFactory(
          ILauncherStatics.fromPtr, _className, IID_ILauncherStatics)
      .launchUriAsync(uri);

  static Future<bool> launchUriWithOptionsAsync(
          Uri? uri, LauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics.fromPtr, _className, IID_ILauncherStatics)
          .launchUriWithOptionsAsync(uri, options);

  static Future<LaunchUriResult?> launchUriForResultsAsync(
          Uri? uri, LauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .launchUriForResultsAsync(uri, options);

  static Future<LaunchUriResult?> launchUriForResultsWithDataAsync(
          Uri? uri, LauncherOptions? options, ValueSet inputData) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .launchUriForResultsWithDataAsync(uri, options, inputData);

  static Future<bool> launchUriWithDataAsync(
          Uri? uri, LauncherOptions? options, ValueSet inputData) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .launchUriWithDataAsync(uri, options, inputData);

  static Future<LaunchQuerySupportStatus> queryUriSupportAsync(
          Uri? uri, LaunchQuerySupportType launchQuerySupportType) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .queryUriSupportAsync(uri, launchQuerySupportType);

  static Future<LaunchQuerySupportStatus>
      queryUriSupportWithPackageFamilyNameAsync(
              Uri? uri,
              LaunchQuerySupportType launchQuerySupportType,
              String packageFamilyName) =>
          createActivationFactory(
                  ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
              .queryUriSupportWithPackageFamilyNameAsync(
                  uri, launchQuerySupportType, packageFamilyName);

  static Future<LaunchQuerySupportStatus> queryFileSupportAsync(
          StorageFile? file) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .queryFileSupportAsync(file);

  static Future<LaunchQuerySupportStatus>
      queryFileSupportWithPackageFamilyNameAsync(
              StorageFile? file, String packageFamilyName) =>
          createActivationFactory(
                  ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
              .queryFileSupportWithPackageFamilyNameAsync(
                  file, packageFamilyName);

  static Future<List<AppInfo>> findUriSchemeHandlersAsync(String scheme) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .findUriSchemeHandlersAsync(scheme);

  static Future<List<AppInfo>> findUriSchemeHandlersWithLaunchUriTypeAsync(
          String scheme, LaunchQuerySupportType launchQuerySupportType) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .findUriSchemeHandlersWithLaunchUriTypeAsync(
              scheme, launchQuerySupportType);

  static Future<List<AppInfo>> findFileHandlersAsync(String extension) =>
      createActivationFactory(
              ILauncherStatics2.fromPtr, _className, IID_ILauncherStatics2)
          .findFileHandlersAsync(extension);

  static Future<bool> launchFolderAsync(IStorageFolder? folder) =>
      createActivationFactory(
              ILauncherStatics3.fromPtr, _className, IID_ILauncherStatics3)
          .launchFolderAsync(folder);

  static Future<bool> launchFolderWithOptionsAsync(
          IStorageFolder? folder, FolderLauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics3.fromPtr, _className, IID_ILauncherStatics3)
          .launchFolderWithOptionsAsync(folder, options);

  static Future<LaunchQuerySupportStatus> queryAppUriSupportAsync(Uri? uri) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .queryAppUriSupportAsync(uri);

  static Future<LaunchQuerySupportStatus>
      queryAppUriSupportWithPackageFamilyNameAsync(
              Uri? uri, String packageFamilyName) =>
          createActivationFactory(
                  ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
              .queryAppUriSupportWithPackageFamilyNameAsync(
                  uri, packageFamilyName);

  static Future<List<AppInfo>> findAppUriHandlersAsync(Uri? uri) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .findAppUriHandlersAsync(uri);

  static Future<LaunchUriStatus> launchUriForUserAsync(User? user, Uri? uri) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .launchUriForUserAsync(user, uri);

  static Future<LaunchUriStatus> launchUriWithOptionsForUserAsync(
          User? user, Uri? uri, LauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .launchUriWithOptionsForUserAsync(user, uri, options);

  static Future<LaunchUriStatus> launchUriWithDataForUserAsync(
          User? user, Uri? uri, LauncherOptions? options, ValueSet inputData) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .launchUriWithDataForUserAsync(user, uri, options, inputData);

  static Future<LaunchUriResult?> launchUriForResultsForUserAsync(
          User? user, Uri? uri, LauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .launchUriForResultsForUserAsync(user, uri, options);

  static Future<LaunchUriResult?> launchUriForResultsWithDataForUserAsync(
          User? user, Uri? uri, LauncherOptions? options, ValueSet inputData) =>
      createActivationFactory(
              ILauncherStatics4.fromPtr, _className, IID_ILauncherStatics4)
          .launchUriForResultsWithDataForUserAsync(
              user, uri, options, inputData);

  static Future<bool> launchFolderPathAsync(String path) =>
      createActivationFactory(
              ILauncherStatics5.fromPtr, _className, IID_ILauncherStatics5)
          .launchFolderPathAsync(path);

  static Future<bool> launchFolderPathWithOptionsAsync(
          String path, FolderLauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics5.fromPtr, _className, IID_ILauncherStatics5)
          .launchFolderPathWithOptionsAsync(path, options);

  static Future<bool> launchFolderPathForUserAsync(User? user, String path) =>
      createActivationFactory(
              ILauncherStatics5.fromPtr, _className, IID_ILauncherStatics5)
          .launchFolderPathForUserAsync(user, path);

  static Future<bool> launchFolderPathWithOptionsForUserAsync(
          User? user, String path, FolderLauncherOptions? options) =>
      createActivationFactory(
              ILauncherStatics5.fromPtr, _className, IID_ILauncherStatics5)
          .launchFolderPathWithOptionsForUserAsync(user, path, options);
}
