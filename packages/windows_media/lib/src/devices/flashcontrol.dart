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

import 'iflashcontrol.dart';
import 'iflashcontrol2.dart';

/// Provides functionality for controlling the flash settings on a capture
/// device.
class FlashControl extends IInspectable
    implements IFlashControl, IFlashControl2 {
  FlashControl.fromPtr(super.ptr);

  late final _iFlashControl = IFlashControl.from(this);

  @override
  bool get supported => _iFlashControl.supported;

  @override
  bool get powerSupported => _iFlashControl.powerSupported;

  @override
  bool get redEyeReductionSupported => _iFlashControl.redEyeReductionSupported;

  @override
  bool get enabled => _iFlashControl.enabled;

  @override
  set enabled(bool value) => _iFlashControl.enabled = value;

  @override
  bool get auto => _iFlashControl.auto;

  @override
  set auto(bool value) => _iFlashControl.auto = value;

  @override
  bool get redEyeReduction => _iFlashControl.redEyeReduction;

  @override
  set redEyeReduction(bool value) => _iFlashControl.redEyeReduction = value;

  @override
  double get powerPercent => _iFlashControl.powerPercent;

  @override
  set powerPercent(double value) => _iFlashControl.powerPercent = value;

  late final _iFlashControl2 = IFlashControl2.from(this);

  @override
  bool get assistantLightSupported => _iFlashControl2.assistantLightSupported;

  @override
  bool get assistantLightEnabled => _iFlashControl2.assistantLightEnabled;

  @override
  set assistantLightEnabled(bool value) =>
      _iFlashControl2.assistantLightEnabled = value;
}
