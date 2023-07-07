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

import 'appinstallerpolicysource.dart';
import 'iappinstallerinfo.dart';
import 'iappinstallerinfo2.dart';
import 'packageversion.dart';

/// Represents an App Installer file containing app package and bundle
/// information for defining the packages that are part of a related set and
/// specifying update and repair configuration.
class AppInstallerInfo extends IInspectable
    implements IAppInstallerInfo, IAppInstallerInfo2 {
  AppInstallerInfo.fromPtr(super.ptr);

  late final _iAppInstallerInfo = IAppInstallerInfo.from(this);

  @override
  Uri? get uri => _iAppInstallerInfo.uri;

  late final _iAppInstallerInfo2 = IAppInstallerInfo2.from(this);

  @override
  bool get onLaunch => _iAppInstallerInfo2.onLaunch;

  @override
  int get hoursBetweenUpdateChecks =>
      _iAppInstallerInfo2.hoursBetweenUpdateChecks;

  @override
  bool get showPrompt => _iAppInstallerInfo2.showPrompt;

  @override
  bool get updateBlocksActivation => _iAppInstallerInfo2.updateBlocksActivation;

  @override
  bool get automaticBackgroundTask =>
      _iAppInstallerInfo2.automaticBackgroundTask;

  @override
  bool get forceUpdateFromAnyVersion =>
      _iAppInstallerInfo2.forceUpdateFromAnyVersion;

  @override
  bool get isAutoRepairEnabled => _iAppInstallerInfo2.isAutoRepairEnabled;

  @override
  PackageVersion get version => _iAppInstallerInfo2.version;

  @override
  DateTime get lastChecked => _iAppInstallerInfo2.lastChecked;

  @override
  DateTime? get pausedUntil => _iAppInstallerInfo2.pausedUntil;

  @override
  List<Uri?>? get updateUris => _iAppInstallerInfo2.updateUris;

  @override
  List<Uri?>? get repairUris => _iAppInstallerInfo2.repairUris;

  @override
  List<Uri?>? get dependencyPackageUris =>
      _iAppInstallerInfo2.dependencyPackageUris;

  @override
  List<Uri?>? get optionalPackageUris =>
      _iAppInstallerInfo2.optionalPackageUris;

  @override
  AppInstallerPolicySource get policySource => _iAppInstallerInfo2.policySource;
}
