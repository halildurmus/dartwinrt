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

class IGamepad2 extends IInspectable implements IGamepad, IGameController {
  IGamepad2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGamepad2Vtbl>().ref;

  final _IGamepad2Vtbl _vtable;

  factory IGamepad2.from(IInspectable interface) =>
      interface.cast(IGamepad2.fromPtr, IID_IGamepad2);

  GameControllerButtonLabel getButtonLabel(GamepadButtons button) {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.GetButtonLabel.asFunction<
          int Function(VTablePointer lpVtbl, int button,
              Pointer<Int32> value)>()(lpVtbl, button.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return GameControllerButtonLabel.from(value.value);
    } finally {
      free(value);
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

final class _IGamepad2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 button, Pointer<Int32> value)>>
      GetButtonLabel;
}
