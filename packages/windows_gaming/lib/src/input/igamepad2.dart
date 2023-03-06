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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'gamecontrollerbuttonlabel.dart';
import 'gamepadbuttons.dart';
import 'gamepadreading.dart';
import 'gamepadvibration.dart';
import 'headset.dart';
import 'igamecontroller.dart';
import 'igamepad.dart';

/// @nodoc
const IID_IGamepad2 = '{3c1689bd-5915-4245-b0c0-c89fae0308ff}';

/// {@category interface}
class IGamepad2 extends IInspectable implements IGamepad, IGameController {
  // vtable begins at 6, is 1 entries long.
  IGamepad2.fromPtr(super.ptr);

  factory IGamepad2.from(IInspectable interface) =>
      IGamepad2.fromPtr(interface.toInterface(IID_IGamepad2));

  GameControllerButtonLabel getButtonLabel(GamepadButtons button) {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Uint32 button,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl, int button, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, button.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return GameControllerButtonLabel.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

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
}
