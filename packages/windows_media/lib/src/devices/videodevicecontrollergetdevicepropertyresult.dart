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

import 'ivideodevicecontrollergetdevicepropertyresult.dart';
import 'videodevicecontrollergetdevicepropertystatus.dart';

/// Represents the result of an operation to get the value of a video device
/// controller driver property.
class VideoDeviceControllerGetDevicePropertyResult extends IInspectable
    implements IVideoDeviceControllerGetDevicePropertyResult {
  VideoDeviceControllerGetDevicePropertyResult.fromPtr(super.ptr);

  late final _iVideoDeviceControllerGetDevicePropertyResult =
      IVideoDeviceControllerGetDevicePropertyResult.from(this);

  @override
  VideoDeviceControllerGetDevicePropertyStatus get status =>
      _iVideoDeviceControllerGetDevicePropertyResult.status;

  @override
  Object? get value => _iVideoDeviceControllerGetDevicePropertyResult.value;
}
