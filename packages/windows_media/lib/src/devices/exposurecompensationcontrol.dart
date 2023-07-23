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

import 'iexposurecompensationcontrol.dart';

/// Provides functionality for modifying exposure levels of captured photos.
class ExposureCompensationControl extends IInspectable
    implements IExposureCompensationControl {
  ExposureCompensationControl.fromPtr(super.ptr);

  late final _iExposureCompensationControl =
      IExposureCompensationControl.from(this);

  @override
  bool get supported => _iExposureCompensationControl.supported;

  @override
  double get min => _iExposureCompensationControl.min;

  @override
  double get max => _iExposureCompensationControl.max;

  @override
  double get step => _iExposureCompensationControl.step;

  @override
  double get value => _iExposureCompensationControl.value;

  @override
  Future<void> setValueAsync(double value) =>
      _iExposureCompensationControl.setValueAsync(value);
}
