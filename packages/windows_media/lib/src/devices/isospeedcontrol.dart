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

import 'iisospeedcontrol.dart';
import 'iisospeedcontrol2.dart';
import 'isospeedpreset.dart';

/// Provides functionality for controlling the ISO film speed settings on a
/// capture device.
class IsoSpeedControl extends IInspectable
    implements IIsoSpeedControl, IIsoSpeedControl2 {
  IsoSpeedControl.fromPtr(super.ptr);

  late final _iIsoSpeedControl = IIsoSpeedControl.from(this);

  @override
  bool get supported => _iIsoSpeedControl.supported;

  @Deprecated(
      "SupportedPresets may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
  @override
  List<IsoSpeedPreset>? get supportedPresets =>
      _iIsoSpeedControl.supportedPresets;

  @Deprecated(
      "Preset may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
  @override
  IsoSpeedPreset get preset => _iIsoSpeedControl.preset;

  @Deprecated(
      "SetPresetAsync may not be available in future versions of Windows Phone. Starting with Windows Phone 8.1, use SetAutoAsync, Auto, SetValueAsync, and Value instead")
  @override
  Future<void> setPresetAsync(IsoSpeedPreset preset) =>
      _iIsoSpeedControl.setPresetAsync(preset);

  late final _iIsoSpeedControl2 = IIsoSpeedControl2.from(this);

  @override
  int get min => _iIsoSpeedControl2.min;

  @override
  int get max => _iIsoSpeedControl2.max;

  @override
  int get step => _iIsoSpeedControl2.step;

  @override
  int get value => _iIsoSpeedControl2.value;

  @override
  Future<void> setValueAsync(int isoSpeed) =>
      _iIsoSpeedControl2.setValueAsync(isoSpeed);

  @override
  bool get auto => _iIsoSpeedControl2.auto;

  @override
  Future<void> setAutoAsync() => _iIsoSpeedControl2.setAutoAsync();
}
