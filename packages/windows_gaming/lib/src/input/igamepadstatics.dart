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

/// @nodoc
const IID_IGamepadStatics = '{8bbce529-d49c-39e9-9560-e47dde96b7c8}';

class IGamepadStatics extends IInspectable {
  IGamepadStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGamepadStaticsVtbl>().ref;

  final _IGamepadStaticsVtbl _vtable;

  factory IGamepadStatics.from(IInspectable interface) =>
      interface.cast(IGamepadStatics.fromPtr, IID_IGamepadStatics);

  int add_GamepadAdded(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_GamepadAdded.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>()(lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_GamepadAdded(int token) {
    final hr = _vtable.remove_GamepadAdded
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_GamepadRemoved(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_GamepadRemoved.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>()(lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_GamepadRemoved(int token) {
    final hr = _vtable.remove_GamepadRemoved
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<Gamepad?>? get gamepads {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Gamepads.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<Gamepad?>.fromPtr(value,
            iterableIid: '{47132ba0-6b17-5cd2-a8bd-b5d3443ccb13}',
            creator: Gamepad.fromPtr)
        .toList();
  }
}

final class _IGamepadStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>> add_GamepadAdded;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_GamepadAdded;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>> add_GamepadRemoved;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_GamepadRemoved;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Gamepads;
}
