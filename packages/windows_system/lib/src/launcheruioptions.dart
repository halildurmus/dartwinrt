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
import 'package:windows_ui/windows_ui.dart';

import 'ilauncheruioptions.dart';

/// Specifies options for user interface elements such as the application picker
/// that can be invoked by this API.
class LauncherUIOptions extends IInspectable implements ILauncherUIOptions {
  LauncherUIOptions.fromPtr(super.ptr);

  late final _iLauncherUIOptions = ILauncherUIOptions.from(this);

  @override
  Point? get invocationPoint => _iLauncherUIOptions.invocationPoint;

  @override
  set invocationPoint(Point? value) =>
      _iLauncherUIOptions.invocationPoint = value;

  @override
  Rect? get selectionRect => _iLauncherUIOptions.selectionRect;

  @override
  set selectionRect(Rect? value) => _iLauncherUIOptions.selectionRect = value;

  @override
  Placement get preferredPlacement => _iLauncherUIOptions.preferredPlacement;

  @override
  set preferredPlacement(Placement value) =>
      _iLauncherUIOptions.preferredPlacement = value;
}
