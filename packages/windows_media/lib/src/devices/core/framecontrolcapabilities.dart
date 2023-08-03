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

import 'frameexposurecapabilities.dart';
import 'frameexposurecompensationcapabilities.dart';
import 'frameflashcapabilities.dart';
import 'framefocuscapabilities.dart';
import 'frameisospeedcapabilities.dart';
import 'iframecontrolcapabilities.dart';
import 'iframecontrolcapabilities2.dart';

/// Provides information about the variable photo sequence capabilities of the
/// capture device.
class FrameControlCapabilities extends IInspectable
    implements IFrameControlCapabilities, IFrameControlCapabilities2 {
  FrameControlCapabilities.fromPtr(super.ptr);

  late final _iFrameControlCapabilities = IFrameControlCapabilities.from(this);

  @override
  FrameExposureCapabilities? get exposure =>
      _iFrameControlCapabilities.exposure;

  @override
  FrameExposureCompensationCapabilities? get exposureCompensation =>
      _iFrameControlCapabilities.exposureCompensation;

  @override
  FrameIsoSpeedCapabilities? get isoSpeed =>
      _iFrameControlCapabilities.isoSpeed;

  @override
  FrameFocusCapabilities? get focus => _iFrameControlCapabilities.focus;

  @override
  bool get photoConfirmationSupported =>
      _iFrameControlCapabilities.photoConfirmationSupported;

  late final _iFrameControlCapabilities2 =
      IFrameControlCapabilities2.from(this);

  @override
  FrameFlashCapabilities? get flash => _iFrameControlCapabilities2.flash;
}
