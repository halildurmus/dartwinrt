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

import 'iopticalimagestabilizationcontrol.dart';
import 'opticalimagestabilizationmode.dart';

/// When supported, allows an app to enable optical image stabilization on the
/// capture device.
class OpticalImageStabilizationControl extends IInspectable
    implements IOpticalImageStabilizationControl {
  OpticalImageStabilizationControl.fromPtr(super.ptr);

  late final _iOpticalImageStabilizationControl =
      IOpticalImageStabilizationControl.from(this);

  @override
  bool get supported => _iOpticalImageStabilizationControl.supported;

  @override
  List<OpticalImageStabilizationMode>? get supportedModes =>
      _iOpticalImageStabilizationControl.supportedModes;

  @override
  OpticalImageStabilizationMode get mode =>
      _iOpticalImageStabilizationControl.mode;

  @override
  set mode(OpticalImageStabilizationMode value) =>
      _iOpticalImageStabilizationControl.mode = value;
}
