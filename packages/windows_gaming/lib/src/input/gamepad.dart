// gamepad.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'enums.g.dart';
import 'headset.dart';
import 'igamecontroller.dart';
import 'igamecontrollerbatteryinfo.dart';
import 'igamepad.dart';
import 'igamepad2.dart';
import 'igamepadstatics.dart';
import 'igamepadstatics2.dart';
import 'structs.g.dart';

/// Represents a gamepad.
///
/// {@category Class}
/// {@category winrt}
class Gamepad extends IInspectable
    implements
        IGamepad,
        IGameController,
        IGamepad2,
        IGameControllerBatteryInfo {
  Gamepad.fromRawPointer(super.ptr);

  static const _className = 'Windows.Gaming.Input.Gamepad';

  // IGamepadStatics methods
  static int add_GamepadAdded(Pointer<NativeFunction<EventHandler>> value) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGamepadStatics);
    final object = IGamepadStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_GamepadAdded(value);
    } finally {
      object.release();
    }
  }

  static void remove_GamepadAdded(int token) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGamepadStatics);
    final object = IGamepadStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_GamepadAdded(token);
    } finally {
      object.release();
    }
  }

  static int add_GamepadRemoved(Pointer<NativeFunction<EventHandler>> value) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGamepadStatics);
    final object = IGamepadStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.add_GamepadRemoved(value);
    } finally {
      object.release();
    }
  }

  static void remove_GamepadRemoved(int token) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGamepadStatics);
    final object = IGamepadStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.remove_GamepadRemoved(token);
    } finally {
      object.release();
    }
  }

  static List<Gamepad> get gamepads {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGamepadStatics);
    final object = IGamepadStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.gamepads;
    } finally {
      object.release();
    }
  }

  // IGamepadStatics2 methods
  static Gamepad? fromGameController(IGameController? gameController) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IGamepadStatics2);
    final object = IGamepadStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.fromGameController(gameController);
    } finally {
      object.release();
    }
  }

  // IGamepad methods
  late final _iGamepad = IGamepad.from(this);

  @override
  GamepadVibration get vibration => _iGamepad.vibration;

  @override
  set vibration(GamepadVibration value) => _iGamepad.vibration = value;

  @override
  GamepadReading getCurrentReading() => _iGamepad.getCurrentReading();

  // IGameController methods
  late final _iGameController = IGameController.from(this);

  @override
  int add_HeadsetConnected(Pointer<NativeFunction<TypedEventHandler>> value) =>
      _iGameController.add_HeadsetConnected(value);

  @override
  void remove_HeadsetConnected(int token) =>
      _iGameController.remove_HeadsetConnected(token);

  @override
  int add_HeadsetDisconnected(
          Pointer<NativeFunction<TypedEventHandler>> value) =>
      _iGameController.add_HeadsetDisconnected(value);

  @override
  void remove_HeadsetDisconnected(int token) =>
      _iGameController.remove_HeadsetDisconnected(token);

  @override
  int add_UserChanged(Pointer<NativeFunction<TypedEventHandler>> value) =>
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

  // IGamepad2 methods
  late final _iGamepad2 = IGamepad2.from(this);

  @override
  GameControllerButtonLabel getButtonLabel(GamepadButtons button) =>
      _iGamepad2.getButtonLabel(button);

  // IGameControllerBatteryInfo methods
  late final _iGameControllerBatteryInfo =
      IGameControllerBatteryInfo.from(this);

  @override
  BatteryReport? tryGetBatteryReport() =>
      _iGameControllerBatteryInfo.tryGetBatteryReport();
}
