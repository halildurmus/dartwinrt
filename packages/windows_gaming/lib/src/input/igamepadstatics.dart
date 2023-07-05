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

import 'gamepad.dart';

/// @nodoc
const IID_IGamepadStatics = '{8bbce529-d49c-39e9-9560-e47dde96b7c8}';

class IGamepadStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IGamepadStatics.fromPtr(super.ptr);

  factory IGamepadStatics.from(IInspectable interface) =>
      IGamepadStatics.fromPtr(interface.toInterface(IID_IGamepadStatics));

  int add_GamepadAdded(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer value, Pointer<IntPtr> token)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer value,
                      Pointer<IntPtr> token)>()(
          ptr.ref.lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throw WindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_GamepadAdded(int token) {
    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_GamepadRemoved(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl,
                              VTablePointer value, Pointer<IntPtr> token)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer value,
                      Pointer<IntPtr> token)>()(
          ptr.ref.lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throw WindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_GamepadRemoved(int token) {
    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  List<Gamepad?> get gamepads {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    return IVectorView<Gamepad?>.fromPtr(value,
            iterableIid: '{47132ba0-6b17-5cd2-a8bd-b5d3443ccb13}',
            creator: Gamepad.fromPtr)
        .toList();
  }
}
