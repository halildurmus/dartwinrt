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

import 'colortemperaturepreset.dart';
import 'iwhitebalancecontrol.dart';

/// Provides functionality for controlling the white balance settings on a
/// capture device.
class WhiteBalanceControl extends IInspectable implements IWhiteBalanceControl {
  WhiteBalanceControl.fromPtr(super.ptr);

  late final _iWhiteBalanceControl = IWhiteBalanceControl.from(this);

  @override
  bool get supported => _iWhiteBalanceControl.supported;

  @override
  ColorTemperaturePreset get preset => _iWhiteBalanceControl.preset;

  @override
  Future<void> setPresetAsync(ColorTemperaturePreset preset) =>
      _iWhiteBalanceControl.setPresetAsync(preset);

  @override
  int get min => _iWhiteBalanceControl.min;

  @override
  int get max => _iWhiteBalanceControl.max;

  @override
  int get step => _iWhiteBalanceControl.step;

  @override
  int get value => _iWhiteBalanceControl.value;

  @override
  Future<void> setValueAsync(int temperature) =>
      _iWhiteBalanceControl.setValueAsync(temperature);
}
