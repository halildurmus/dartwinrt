// headset.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'igamecontrollerbatteryinfo.dart';
import 'iheadset.dart';

/// Contains information about an audio headset attached to a gamepad.
///
/// {@category Class}
/// {@category winrt}
class Headset extends IInspectable
    implements IHeadset, IGameControllerBatteryInfo {
  Headset.fromRawPointer(super.ptr);

  // IHeadset methods
  late final _iHeadset = IHeadset.from(this);

  @override
  String get captureDeviceId => _iHeadset.captureDeviceId;

  @override
  String get renderDeviceId => _iHeadset.renderDeviceId;

  // IGameControllerBatteryInfo methods
  late final _iGameControllerBatteryInfo =
      IGameControllerBatteryInfo.from(this);

  @override
  BatteryReport? tryGetBatteryReport() =>
      _iGameControllerBatteryInfo.tryGetBatteryReport();
}
