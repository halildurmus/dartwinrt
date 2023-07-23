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

import 'frameexposurecompensationcontrol.dart';
import 'frameexposurecontrol.dart';
import 'frameflashcontrol.dart';
import 'framefocuscontrol.dart';
import 'frameisospeedcontrol.dart';
import 'iframecontroller.dart';
import 'iframecontroller2.dart';

/// Represents the settings for a frame in a variable photo sequence.
class FrameController extends IInspectable
    implements IFrameController, IFrameController2 {
  FrameController() : super(activateClass(_className));
  FrameController.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Devices.Core.FrameController';

  late final _iFrameController = IFrameController.from(this);

  @override
  FrameExposureControl? get exposureControl =>
      _iFrameController.exposureControl;

  @override
  FrameExposureCompensationControl? get exposureCompensationControl =>
      _iFrameController.exposureCompensationControl;

  @override
  FrameIsoSpeedControl? get isoSpeedControl =>
      _iFrameController.isoSpeedControl;

  @override
  FrameFocusControl? get focusControl => _iFrameController.focusControl;

  @override
  bool? get photoConfirmationEnabled =>
      _iFrameController.photoConfirmationEnabled;

  @override
  set photoConfirmationEnabled(bool? value) =>
      _iFrameController.photoConfirmationEnabled = value;

  late final _iFrameController2 = IFrameController2.from(this);

  @override
  FrameFlashControl? get flashControl => _iFrameController2.flashControl;
}
