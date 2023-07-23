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

import 'iuserdatapaths.dart';
import 'iuserdatapathsstatics.dart';

/// Returns full paths for common user data folders. User data folders are
/// based on the KNOWNFOLDERID naming pattern.
class UserDataPaths extends IInspectable implements IUserDataPaths {
  UserDataPaths.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.UserDataPaths';

  static UserDataPaths? getForUser(User? user) => createActivationFactory(
          IUserDataPathsStatics.fromPtr, _className, IID_IUserDataPathsStatics)
      .getForUser(user);

  static UserDataPaths? getDefault() => createActivationFactory(
          IUserDataPathsStatics.fromPtr, _className, IID_IUserDataPathsStatics)
      .getDefault();

  late final _iUserDataPaths = IUserDataPaths.from(this);

  @override
  String get cameraRoll => _iUserDataPaths.cameraRoll;

  @override
  String get cookies => _iUserDataPaths.cookies;

  @override
  String get desktop => _iUserDataPaths.desktop;

  @override
  String get documents => _iUserDataPaths.documents;

  @override
  String get downloads => _iUserDataPaths.downloads;

  @override
  String get favorites => _iUserDataPaths.favorites;

  @override
  String get history => _iUserDataPaths.history;

  @override
  String get internetCache => _iUserDataPaths.internetCache;

  @override
  String get localAppData => _iUserDataPaths.localAppData;

  @override
  String get localAppDataLow => _iUserDataPaths.localAppDataLow;

  @override
  String get music => _iUserDataPaths.music;

  @override
  String get pictures => _iUserDataPaths.pictures;

  @override
  String get profile => _iUserDataPaths.profile;

  @override
  String get recent => _iUserDataPaths.recent;

  @override
  String get roamingAppData => _iUserDataPaths.roamingAppData;

  @override
  String get savedPictures => _iUserDataPaths.savedPictures;

  @override
  String get screenshots => _iUserDataPaths.screenshots;

  @override
  String get templates => _iUserDataPaths.templates;

  @override
  String get videos => _iUserDataPaths.videos;
}
