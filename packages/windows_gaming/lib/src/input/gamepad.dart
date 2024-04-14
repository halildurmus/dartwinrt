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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'gamecontrollerbuttonlabel.dart';
import 'gamepadbuttons.dart';
import 'gamepadreading.dart';
import 'gamepadvibration.dart';
import 'headset.dart';
import 'igamecontroller.dart';
import 'igamecontrollerbatteryinfo.dart';
import 'igamepad.dart';
import 'igamepad2.dart';
import 'igamepadstatics.dart';
import 'igamepadstatics2.dart';

/// Represents a gamepad.
class Gamepad extends IInspectable
    implements
        IGamepad,
        IGameController,
        IGamepad2,
        IGameControllerBatteryInfo {
  Gamepad.fromPtr(super.ptr);

  static const _className = 'Windows.Gaming.Input.Gamepad';

  static int add_GamepadAdded(Pointer<COMObject> value) =>
      createActivationFactory(
              IGamepadStatics.fromPtr, _className, IID_IGamepadStatics)
          .add_GamepadAdded(value);

  static void remove_GamepadAdded(int token) => createActivationFactory(
          IGamepadStatics.fromPtr, _className, IID_IGamepadStatics)
      .remove_GamepadAdded(token);

  static int add_GamepadRemoved(Pointer<COMObject> value) =>
      createActivationFactory(
              IGamepadStatics.fromPtr, _className, IID_IGamepadStatics)
          .add_GamepadRemoved(value);

  static void remove_GamepadRemoved(int token) => createActivationFactory(
          IGamepadStatics.fromPtr, _className, IID_IGamepadStatics)
      .remove_GamepadRemoved(token);

  static List<Gamepad?>? get gamepads => createActivationFactory(
          IGamepadStatics.fromPtr, _className, IID_IGamepadStatics)
      .gamepads;

  static Gamepad? fromGameController(IGameController? gameController) =>
      createActivationFactory(
              IGamepadStatics2.fromPtr, _className, IID_IGamepadStatics2)
          .fromGameController(gameController);

  late final _iGamepad = IGamepad.from(this);

  @override
  GamepadVibration get vibration => _iGamepad.vibration;

  @override
  set vibration(GamepadVibration value) => _iGamepad.vibration = value;

  @override
  GamepadReading getCurrentReading() => _iGamepad.getCurrentReading();

  late final _iGameController = IGameController.from(this);

  @override
  int add_HeadsetConnected(Pointer<COMObject> value) =>
      _iGameController.add_HeadsetConnected(value);

  @override
  void remove_HeadsetConnected(int token) =>
      _iGameController.remove_HeadsetConnected(token);

  @override
  int add_HeadsetDisconnected(Pointer<COMObject> value) =>
      _iGameController.add_HeadsetDisconnected(value);

  @override
  void remove_HeadsetDisconnected(int token) =>
      _iGameController.remove_HeadsetDisconnected(token);

  @override
  int add_UserChanged(Pointer<COMObject> value) =>
      _iGameController.add_UserChanged(value);

  @override
  void remove_UserChanged(int token) =>
      _iGameController.remove_UserChanged(token);

  @override
  Headset? get headset => _iGameController.headset;

  @override
  bool get isWireless => _iGameController.isWireless;

  @override
  User? get user => _iGameController.user;

  late final _iGamepad2 = IGamepad2.from(this);

  @override
  GameControllerButtonLabel getButtonLabel(GamepadButtons button) =>
      _iGamepad2.getButtonLabel(button);

  late final _iGameControllerBatteryInfo =
      IGameControllerBatteryInfo.from(this);

  @override
  BatteryReport? tryGetBatteryReport() =>
      _iGameControllerBatteryInfo.tryGetBatteryReport();
}
