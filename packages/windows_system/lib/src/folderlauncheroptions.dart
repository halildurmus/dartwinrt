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
import 'package:windows_storage/windows_storage.dart';
import 'package:windows_ui/windows_ui.dart';

import 'ifolderlauncheroptions.dart';
import 'ilauncherviewoptions.dart';

/// Specifies the options to use when launching File Explorer to display the
/// contents of a specific folder by calling the
/// LaunchFolderAsync(IStorageFolder, FolderLauncherOptions) method.
class FolderLauncherOptions extends IInspectable
    implements IFolderLauncherOptions, ILauncherViewOptions {
  FolderLauncherOptions() : super(activateClass(_className));
  FolderLauncherOptions.fromPtr(super.ptr);

  static const _className = 'Windows.System.FolderLauncherOptions';

  late final _iFolderLauncherOptions = IFolderLauncherOptions.from(this);

  @override
  IVector<IStorageItem?>? get itemsToSelect =>
      _iFolderLauncherOptions.itemsToSelect;

  late final _iLauncherViewOptions = ILauncherViewOptions.from(this);

  @override
  ViewSizePreference get desiredRemainingView =>
      _iLauncherViewOptions.desiredRemainingView;

  @override
  set desiredRemainingView(ViewSizePreference value) =>
      _iLauncherViewOptions.desiredRemainingView = value;
}
