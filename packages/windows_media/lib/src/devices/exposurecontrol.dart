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

import 'iexposurecontrol.dart';

/// Provides functionality for controlling the exposure settings on a
/// capture device.
class ExposureControl extends IInspectable implements IExposureControl {
  ExposureControl.fromPtr(super.ptr);

  late final _iExposureControl = IExposureControl.from(this);

  @override
  bool get supported => _iExposureControl.supported;

  @override
  bool get auto => _iExposureControl.auto;

  @override
  Future<void> setAutoAsync(bool value) =>
      _iExposureControl.setAutoAsync(value);

  @override
  Duration get min => _iExposureControl.min;

  @override
  Duration get max => _iExposureControl.max;

  @override
  Duration get step => _iExposureControl.step;

  @override
  Duration get value => _iExposureControl.value;

  @override
  Future<void> setValueAsync(Duration shutterDuration) =>
      _iExposureControl.setValueAsync(shutterDuration);
}
