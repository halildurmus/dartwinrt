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
import 'package:windows_storage/windows_storage.dart';
import 'package:windows_ui/windows_ui.dart';

import 'ilauncheroptions.dart';
import 'ilauncheroptions2.dart';
import 'ilauncheroptions3.dart';
import 'ilauncheroptions4.dart';
import 'ilauncherviewoptions.dart';
import 'launcheruioptions.dart';

/// Specifies the options used to launch the default app for a file or URI.
class LauncherOptions extends IInspectable
    implements
        ILauncherOptions2,
        ILauncherOptions,
        ILauncherOptions3,
        ILauncherOptions4,
        ILauncherViewOptions {
  LauncherOptions() : super(activateClass(_className));
  LauncherOptions.fromPtr(super.ptr);

  static const _className = 'Windows.System.LauncherOptions';

  late final _iLauncherOptions2 = ILauncherOptions2.from(this);

  @override
  String get targetApplicationPackageFamilyName =>
      _iLauncherOptions2.targetApplicationPackageFamilyName;

  @override
  set targetApplicationPackageFamilyName(String value) =>
      _iLauncherOptions2.targetApplicationPackageFamilyName = value;

  @override
  StorageFileQueryResult? get neighboringFilesQuery =>
      _iLauncherOptions2.neighboringFilesQuery;

  @override
  set neighboringFilesQuery(StorageFileQueryResult? value) =>
      _iLauncherOptions2.neighboringFilesQuery = value;

  late final _iLauncherOptions = ILauncherOptions.from(this);

  @override
  bool get treatAsUntrusted => _iLauncherOptions.treatAsUntrusted;

  @override
  set treatAsUntrusted(bool value) =>
      _iLauncherOptions.treatAsUntrusted = value;

  @override
  bool get displayApplicationPicker =>
      _iLauncherOptions.displayApplicationPicker;

  @override
  set displayApplicationPicker(bool value) =>
      _iLauncherOptions.displayApplicationPicker = value;

  @override
  LauncherUIOptions? get ui => _iLauncherOptions.ui;

  @override
  String get preferredApplicationPackageFamilyName =>
      _iLauncherOptions.preferredApplicationPackageFamilyName;

  @override
  set preferredApplicationPackageFamilyName(String value) =>
      _iLauncherOptions.preferredApplicationPackageFamilyName = value;

  @override
  String get preferredApplicationDisplayName =>
      _iLauncherOptions.preferredApplicationDisplayName;

  @override
  set preferredApplicationDisplayName(String value) =>
      _iLauncherOptions.preferredApplicationDisplayName = value;

  @override
  Uri? get fallbackUri => _iLauncherOptions.fallbackUri;

  @override
  set fallbackUri(Uri? value) => _iLauncherOptions.fallbackUri = value;

  @override
  String get contentType => _iLauncherOptions.contentType;

  @override
  set contentType(String value) => _iLauncherOptions.contentType = value;

  late final _iLauncherOptions3 = ILauncherOptions3.from(this);

  @override
  bool get ignoreAppUriHandlers => _iLauncherOptions3.ignoreAppUriHandlers;

  @override
  set ignoreAppUriHandlers(bool value) =>
      _iLauncherOptions3.ignoreAppUriHandlers = value;

  late final _iLauncherOptions4 = ILauncherOptions4.from(this);

  @override
  bool get limitPickerToCurrentAppAndAppUriHandlers =>
      _iLauncherOptions4.limitPickerToCurrentAppAndAppUriHandlers;

  @override
  set limitPickerToCurrentAppAndAppUriHandlers(bool value) =>
      _iLauncherOptions4.limitPickerToCurrentAppAndAppUriHandlers = value;

  late final _iLauncherViewOptions = ILauncherViewOptions.from(this);

  @override
  ViewSizePreference get desiredRemainingView =>
      _iLauncherViewOptions.desiredRemainingView;

  @override
  set desiredRemainingView(ViewSizePreference value) =>
      _iLauncherViewOptions.desiredRemainingView = value;
}
