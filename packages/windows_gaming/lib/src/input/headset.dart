// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'igamecontrollerbatteryinfo.dart';
import 'iheadset.dart';

/// Contains information about an audio headset attached to a gamepad.
///
/// {@category class}
class Headset extends IInspectable
    implements IHeadset, IGameControllerBatteryInfo {
  Headset.fromRawPointer(super.ptr);

  late final _iHeadset = IHeadset.from(this);

  @override
  String get captureDeviceId => _iHeadset.captureDeviceId;

  @override
  String get renderDeviceId => _iHeadset.renderDeviceId;

  late final _iGameControllerBatteryInfo =
      IGameControllerBatteryInfo.from(this);

  @override
  BatteryReport? tryGetBatteryReport() =>
      _iGameControllerBatteryInfo.tryGetBatteryReport();
}
