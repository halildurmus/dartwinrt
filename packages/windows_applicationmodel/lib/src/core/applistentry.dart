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

import '../appdisplayinfo.dart';
import '../appinfo.dart';
import 'iapplistentry.dart';
import 'iapplistentry2.dart';
import 'iapplistentry3.dart';
import 'iapplistentry4.dart';

/// Provides an app's display info such as its display name and description, and
/// a method to launch the app.
class AppListEntry extends IInspectable
    implements IAppListEntry, IAppListEntry2, IAppListEntry3, IAppListEntry4 {
  AppListEntry.fromPtr(super.ptr);

  late final _iAppListEntry = IAppListEntry.from(this);

  @override
  AppDisplayInfo? get displayInfo => _iAppListEntry.displayInfo;

  @override
  Future<bool> launchAsync() => _iAppListEntry.launchAsync();

  late final _iAppListEntry2 = IAppListEntry2.from(this);

  @override
  String get appUserModelId => _iAppListEntry2.appUserModelId;

  late final _iAppListEntry3 = IAppListEntry3.from(this);

  @override
  Future<bool> launchForUserAsync(User? user) =>
      _iAppListEntry3.launchForUserAsync(user);

  late final _iAppListEntry4 = IAppListEntry4.from(this);

  @override
  AppInfo? get appInfo => _iAppListEntry4.appInfo;
}
