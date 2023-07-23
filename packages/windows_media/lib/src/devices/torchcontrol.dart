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

import 'itorchcontrol.dart';

/// Provides functionality for controlling the torch LED settings on a
/// capture device.
class TorchControl extends IInspectable implements ITorchControl {
  TorchControl.fromPtr(super.ptr);

  late final _iTorchControl = ITorchControl.from(this);

  @override
  bool get supported => _iTorchControl.supported;

  @override
  bool get powerSupported => _iTorchControl.powerSupported;

  @override
  bool get enabled => _iTorchControl.enabled;

  @override
  set enabled(bool value) => _iTorchControl.enabled = value;

  @override
  double get powerPercent => _iTorchControl.powerPercent;

  @override
  set powerPercent(double value) => _iTorchControl.powerPercent = value;
}
