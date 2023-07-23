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

import 'advancedphotomode.dart';
import 'iadvancedphotocapturesettings.dart';

/// Represents settings for an AdvancedPhotoControl object.
class AdvancedPhotoCaptureSettings extends IInspectable
    implements IAdvancedPhotoCaptureSettings {
  AdvancedPhotoCaptureSettings() : super(activateClass(_className));
  AdvancedPhotoCaptureSettings.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.Devices.AdvancedPhotoCaptureSettings';

  late final _iAdvancedPhotoCaptureSettings =
      IAdvancedPhotoCaptureSettings.from(this);

  @override
  AdvancedPhotoMode get mode => _iAdvancedPhotoCaptureSettings.mode;

  @override
  set mode(AdvancedPhotoMode value) =>
      _iAdvancedPhotoCaptureSettings.mode = value;
}
