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

import 'advancedphotocapturesettings.dart';
import 'advancedphotomode.dart';
import 'iadvancedphotocontrol.dart';

/// Provides functionality for controlling the advanced photo capture
/// behavior on a capture device.
class AdvancedPhotoControl extends IInspectable
    implements IAdvancedPhotoControl {
  AdvancedPhotoControl.fromPtr(super.ptr);

  late final _iAdvancedPhotoControl = IAdvancedPhotoControl.from(this);

  @override
  bool get supported => _iAdvancedPhotoControl.supported;

  @override
  List<AdvancedPhotoMode>? get supportedModes =>
      _iAdvancedPhotoControl.supportedModes;

  @override
  AdvancedPhotoMode get mode => _iAdvancedPhotoControl.mode;

  @override
  void configure(AdvancedPhotoCaptureSettings? settings) =>
      _iAdvancedPhotoControl.configure(settings);
}
