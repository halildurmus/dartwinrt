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

import 'ivideotemporaldenoisingcontrol.dart';
import 'videotemporaldenoisingmode.dart';

/// When supported, allows an app to enable temporal denoising for video
/// capture.
class VideoTemporalDenoisingControl extends IInspectable
    implements IVideoTemporalDenoisingControl {
  VideoTemporalDenoisingControl.fromPtr(super.ptr);

  late final _iVideoTemporalDenoisingControl =
      IVideoTemporalDenoisingControl.from(this);

  @override
  bool get supported => _iVideoTemporalDenoisingControl.supported;

  @override
  List<VideoTemporalDenoisingMode>? get supportedModes =>
      _iVideoTemporalDenoisingControl.supportedModes;

  @override
  VideoTemporalDenoisingMode get mode => _iVideoTemporalDenoisingControl.mode;

  @override
  set mode(VideoTemporalDenoisingMode value) =>
      _iVideoTemporalDenoisingControl.mode = value;
}
