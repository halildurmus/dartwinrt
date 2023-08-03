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

import 'capturescenemode.dart';
import 'iscenemodecontrol.dart';

/// Provides functionality for controlling the scene mode settings on a capture
/// device.
class SceneModeControl extends IInspectable implements ISceneModeControl {
  SceneModeControl.fromPtr(super.ptr);

  late final _iSceneModeControl = ISceneModeControl.from(this);

  @override
  List<CaptureSceneMode>? get supportedModes =>
      _iSceneModeControl.supportedModes;

  @override
  CaptureSceneMode get value => _iSceneModeControl.value;

  @override
  Future<void> setValueAsync(CaptureSceneMode sceneMode) =>
      _iSceneModeControl.setValueAsync(sceneMode);
}
