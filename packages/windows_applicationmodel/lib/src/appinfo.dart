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

import 'appdisplayinfo.dart';
import 'appexecutioncontext.dart';
import 'iappinfo.dart';
import 'iappinfo2.dart';
import 'iappinfo3.dart';
import 'iappinfo4.dart';
import 'iappinfostatics.dart';
import 'package.dart';

/// Provides information about an application such as its name, logo,
/// package information, ID.
class AppInfo extends IInspectable
    implements IAppInfo, IAppInfo2, IAppInfo3, IAppInfo4 {
  AppInfo.fromPtr(super.ptr);

  static const _className = 'Windows.ApplicationModel.AppInfo';

  static AppInfo? get current => createActivationFactory(
          IAppInfoStatics.fromPtr, _className, IID_IAppInfoStatics)
      .current;

  static AppInfo? getFromAppUserModelId(String appUserModelId) =>
      createActivationFactory(
              IAppInfoStatics.fromPtr, _className, IID_IAppInfoStatics)
          .getFromAppUserModelId(appUserModelId);

  static AppInfo? getFromAppUserModelIdForUser(
          User? user, String appUserModelId) =>
      createActivationFactory(
              IAppInfoStatics.fromPtr, _className, IID_IAppInfoStatics)
          .getFromAppUserModelIdForUser(user, appUserModelId);

  late final _iAppInfo = IAppInfo.from(this);

  @override
  String get id => _iAppInfo.id;

  @override
  String get appUserModelId => _iAppInfo.appUserModelId;

  @override
  AppDisplayInfo? get displayInfo => _iAppInfo.displayInfo;

  @override
  String get packageFamilyName => _iAppInfo.packageFamilyName;

  late final _iAppInfo2 = IAppInfo2.from(this);

  @override
  Package? get package => _iAppInfo2.package;

  late final _iAppInfo3 = IAppInfo3.from(this);

  @override
  AppExecutionContext get executionContext => _iAppInfo3.executionContext;

  late final _iAppInfo4 = IAppInfo4.from(this);

  @override
  List<String> get supportedFileExtensions =>
      _iAppInfo4.supportedFileExtensions;
}
