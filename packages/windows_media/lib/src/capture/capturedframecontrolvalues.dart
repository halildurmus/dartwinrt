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

import '../devices/capturescenemode.dart';
import '../devices/mediacapturefocusstate.dart';
import '../mediaproperties/mediaratio.dart';
import 'icapturedframecontrolvalues.dart';
import 'icapturedframecontrolvalues2.dart';
import 'whitebalancegain.dart';

/// Provides information about the capture device settings that were used
/// for a frame in a variable photo sequence.
class CapturedFrameControlValues extends IInspectable
    implements ICapturedFrameControlValues, ICapturedFrameControlValues2 {
  CapturedFrameControlValues.fromPtr(super.ptr);

  late final _iCapturedFrameControlValues =
      ICapturedFrameControlValues.from(this);

  @override
  Duration? get exposure => _iCapturedFrameControlValues.exposure;

  @override
  double? get exposureCompensation =>
      _iCapturedFrameControlValues.exposureCompensation;

  @override
  int? get isoSpeed => _iCapturedFrameControlValues.isoSpeed;

  @override
  int? get focus => _iCapturedFrameControlValues.focus;

  @override
  CaptureSceneMode? get sceneMode => _iCapturedFrameControlValues.sceneMode;

  @override
  bool? get flashed => _iCapturedFrameControlValues.flashed;

  @override
  double? get flashPowerPercent =>
      _iCapturedFrameControlValues.flashPowerPercent;

  @override
  int? get whiteBalance => _iCapturedFrameControlValues.whiteBalance;

  @override
  double? get zoomFactor => _iCapturedFrameControlValues.zoomFactor;

  late final _iCapturedFrameControlValues2 =
      ICapturedFrameControlValues2.from(this);

  @override
  MediaCaptureFocusState? get focusState =>
      _iCapturedFrameControlValues2.focusState;

  @override
  double? get isoDigitalGain => _iCapturedFrameControlValues2.isoDigitalGain;

  @override
  double? get isoAnalogGain => _iCapturedFrameControlValues2.isoAnalogGain;

  @override
  MediaRatio? get sensorFrameRate =>
      _iCapturedFrameControlValues2.sensorFrameRate;

  @override
  WhiteBalanceGain? get whiteBalanceGain =>
      _iCapturedFrameControlValues2.whiteBalanceGain;
}
