// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'gamepad.dart';

/// @nodoc
const IID_IGamepadStatics = '{8bbce529-d49c-39e9-9560-e47dde96b7c8}';

/// {@category interface}
class IGamepadStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IGamepadStatics.fromRawPointer(super.ptr);

  factory IGamepadStatics.from(IInspectable interface) =>
      IGamepadStatics.fromRawPointer(
          interface.toInterface(IID_IGamepadStatics));

  int add_GamepadAdded(Pointer<NativeFunction<EventHandler>> value) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<EventHandler>> value,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<NativeFunction<EventHandler>> value,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_GamepadAdded(int token) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_GamepadRemoved(Pointer<NativeFunction<EventHandler>> value) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          Pointer,
                          Pointer<NativeFunction<EventHandler>> value,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<NativeFunction<EventHandler>> value,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_GamepadRemoved(int token) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<NativeFunction<HRESULT Function(Pointer, IntPtr token)>>>()
        .value
        .asFunction<int Function(Pointer, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  List<Gamepad> get gamepads {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<Gamepad>.fromRawPointer(retValuePtr,
        iterableIid: '{47132ba0-6b17-5cd2-a8bd-b5d3443ccb13}',
        creator: Gamepad.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }
}
