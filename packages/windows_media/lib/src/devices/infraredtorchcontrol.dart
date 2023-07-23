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

import 'iinfraredtorchcontrol.dart';
import 'infraredtorchmode.dart';

/// Provides functionality for controlling the infrared torch LED settings
/// on a capture device.
class InfraredTorchControl extends IInspectable
    implements IInfraredTorchControl {
  InfraredTorchControl.fromPtr(super.ptr);

  late final _iInfraredTorchControl = IInfraredTorchControl.from(this);

  @override
  bool get isSupported => _iInfraredTorchControl.isSupported;

  @override
  List<InfraredTorchMode>? get supportedModes =>
      _iInfraredTorchControl.supportedModes;

  @override
  InfraredTorchMode get currentMode => _iInfraredTorchControl.currentMode;

  @override
  set currentMode(InfraredTorchMode value) =>
      _iInfraredTorchControl.currentMode = value;

  @override
  int get minPower => _iInfraredTorchControl.minPower;

  @override
  int get maxPower => _iInfraredTorchControl.maxPower;

  @override
  int get powerStep => _iInfraredTorchControl.powerStep;

  @override
  int get power => _iInfraredTorchControl.power;

  @override
  set power(int value) => _iInfraredTorchControl.power = value;
}
