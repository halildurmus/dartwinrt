// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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

import 'gamepadreading.dart';
import 'gamepadvibration.dart';
import 'headset.dart';
import 'igamecontroller.dart';

/// @nodoc
const IID_IGamepad = '{bc7bb43c-0a69-3903-9e9d-a50f86a45de5}';

class IGamepad extends IInspectable implements IGameController {
  // vtable begins at 6, is 3 entries long.
  IGamepad.fromPtr(super.ptr);

  factory IGamepad.from(IInspectable interface) =>
      IGamepad.fromPtr(interface.toInterface(IID_IGamepad));

  GamepadVibration get vibration {
    final value = calloc<NativeGamepadVibration>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeGamepadVibration> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeGamepadVibration> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      value.free();
    }
  }

  set vibration(GamepadVibration value) {
    final valueNativeStructPtr = value.toNative();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            NativeGamepadVibration value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, NativeGamepadVibration value)>()(
        ptr.ref.lpVtbl, valueNativeStructPtr.ref);

    valueNativeStructPtr.free();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  GamepadReading getCurrentReading() {
    final value = calloc<NativeGamepadReading>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              Pointer<NativeGamepadReading> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl,
                      Pointer<NativeGamepadReading> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      value.free();
    }
  }

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
