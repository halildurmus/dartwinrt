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

import 'gamepad.dart';
import 'igamecontroller.dart';
import 'igamepadstatics.dart';

/// @nodoc
const IID_IGamepadStatics2 = '{42676dc5-0856-47c4-9213-b395504c3a3c}';

class IGamepadStatics2 extends IInspectable implements IGamepadStatics {
  // vtable begins at 6, is 1 entries long.
  IGamepadStatics2.fromPtr(super.ptr);

  factory IGamepadStatics2.from(IInspectable interface) =>
      interface.cast(IGamepadStatics2.fromPtr, IID_IGamepadStatics2);

  Gamepad? fromGameController(IGameController? gameController) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer gameController,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer gameController,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, gameController.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return Gamepad.fromPtr(value);
  }

  late final _iGamepadStatics = IGamepadStatics.from(this);

  @override
  int add_GamepadAdded(Pointer<COMObject> value) =>
      _iGamepadStatics.add_GamepadAdded(value);

  @override
  void remove_GamepadAdded(int token) =>
      _iGamepadStatics.remove_GamepadAdded(token);

  @override
  int add_GamepadRemoved(Pointer<COMObject> value) =>
      _iGamepadStatics.add_GamepadRemoved(value);

  @override
  void remove_GamepadRemoved(int token) =>
      _iGamepadStatics.remove_GamepadRemoved(token);

  @override
  List<Gamepad?>? get gamepads => _iGamepadStatics.gamepads;
}
