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

import 'frameflashmode.dart';
import 'iframeflashcontrol.dart';

/// Represents the flash settings for a frame in a variable photo sequence.
class FrameFlashControl extends IInspectable implements IFrameFlashControl {
  FrameFlashControl.fromPtr(super.ptr);

  late final _iFrameFlashControl = IFrameFlashControl.from(this);

  @override
  FrameFlashMode get mode => _iFrameFlashControl.mode;

  @override
  set mode(FrameFlashMode value) => _iFrameFlashControl.mode = value;

  @override
  bool get auto => _iFrameFlashControl.auto;

  @override
  set auto(bool value) => _iFrameFlashControl.auto = value;

  @override
  bool get redEyeReduction => _iFrameFlashControl.redEyeReduction;

  @override
  set redEyeReduction(bool value) =>
      _iFrameFlashControl.redEyeReduction = value;

  @override
  double get powerPercent => _iFrameFlashControl.powerPercent;

  @override
  set powerPercent(double value) => _iFrameFlashControl.powerPercent = value;
}
