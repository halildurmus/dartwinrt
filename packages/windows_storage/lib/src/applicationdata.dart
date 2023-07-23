// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

import 'applicationdatacontainer.dart';
import 'applicationdatalocality.dart';
import 'iapplicationdata.dart';
import 'iapplicationdata2.dart';
import 'iapplicationdata3.dart';
import 'iapplicationdatastatics.dart';
import 'iapplicationdatastatics2.dart';
import 'storagefolder.dart';

/// Provides access to the application data store. Application data consists
/// of files and settings that are either local, roaming, or temporary.
class ApplicationData extends IInspectable
    implements
        IApplicationData,
        IApplicationData2,
        IApplicationData3,
        IClosable {
  ApplicationData.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.ApplicationData';

  static ApplicationData? get current => createActivationFactory(
          IApplicationDataStatics.fromPtr,
          _className,
          IID_IApplicationDataStatics)
      .current;

  static Future<ApplicationData?> getForUserAsync(User? user) =>
      createActivationFactory(IApplicationDataStatics2.fromPtr, _className,
              IID_IApplicationDataStatics2)
          .getForUserAsync(user);

  late final _iApplicationData = IApplicationData.from(this);

  @override
  int get version => _iApplicationData.version;

  @override
  Future<void> setVersionAsync(
          int desiredVersion, Pointer<COMObject> handler) =>
      _iApplicationData.setVersionAsync(desiredVersion, handler);

  @override
  Future<void> clearAllAsync() => _iApplicationData.clearAllAsync();

  @override
  Future<void> clearAsync(ApplicationDataLocality locality) =>
      _iApplicationData.clearAsync(locality);

  @override
  ApplicationDataContainer? get localSettings =>
      _iApplicationData.localSettings;

  @override
  ApplicationDataContainer? get roamingSettings =>
      _iApplicationData.roamingSettings;

  @override
  StorageFolder? get localFolder => _iApplicationData.localFolder;

  @override
  StorageFolder? get roamingFolder => _iApplicationData.roamingFolder;

  @override
  StorageFolder? get temporaryFolder => _iApplicationData.temporaryFolder;

  @override
  int add_DataChanged(Pointer<COMObject> handler) =>
      _iApplicationData.add_DataChanged(handler);

  @override
  void remove_DataChanged(int token) =>
      _iApplicationData.remove_DataChanged(token);

  @override
  void signalDataChanged() => _iApplicationData.signalDataChanged();

  @override
  int get roamingStorageQuota => _iApplicationData.roamingStorageQuota;

  late final _iApplicationData2 = IApplicationData2.from(this);

  @override
  StorageFolder? get localCacheFolder => _iApplicationData2.localCacheFolder;

  late final _iApplicationData3 = IApplicationData3.from(this);

  @override
  StorageFolder? getPublisherCacheFolder(String folderName) =>
      _iApplicationData3.getPublisherCacheFolder(folderName);

  @override
  Future<void> clearPublisherCacheFolderAsync(String folderName) =>
      _iApplicationData3.clearPublisherCacheFolderAsync(folderName);

  @override
  StorageFolder? get sharedLocalFolder => _iApplicationData3.sharedLocalFolder;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
