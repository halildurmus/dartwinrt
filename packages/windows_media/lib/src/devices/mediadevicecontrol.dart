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

import 'imediadevicecontrol.dart';
import 'mediadevicecontrolcapabilities.dart';

/// Gets or sets a device setting on a camera.
class MediaDeviceControl extends IInspectable implements IMediaDeviceControl {
  MediaDeviceControl.fromPtr(super.ptr);

  late final _iMediaDeviceControl = IMediaDeviceControl.from(this);

  @override
  MediaDeviceControlCapabilities? get capabilities =>
      _iMediaDeviceControl.capabilities;

  @override
  (bool, {double value}) tryGetValue() => _iMediaDeviceControl.tryGetValue();

  @override
  bool trySetValue(double value) => _iMediaDeviceControl.trySetValue(value);

  @override
  (bool, {bool value}) tryGetAuto() => _iMediaDeviceControl.tryGetAuto();

  @override
  bool trySetAuto(bool value) => _iMediaDeviceControl.trySetAuto(value);
}
