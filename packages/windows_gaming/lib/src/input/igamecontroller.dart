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

import 'headset.dart';

/// @nodoc
const IID_IGameController = '{1baf6522-5f64-42c5-8267-b9fe2215bfbd}';

class IGameController extends IInspectable {
  IGameController.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IGameControllerVtbl>().ref;

  final _IGameControllerVtbl _vtable;

  factory IGameController.from(IInspectable interface) =>
      interface.cast(IGameController.fromPtr, IID_IGameController);

  int add_HeadsetConnected(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_HeadsetConnected.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>()(lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_HeadsetConnected(int token) {
    final hr = _vtable.remove_HeadsetConnected
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_HeadsetDisconnected(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_HeadsetDisconnected.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>()(lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_HeadsetDisconnected(int token) {
    final hr = _vtable.remove_HeadsetDisconnected
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_UserChanged(Pointer<COMObject> value) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_UserChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>()(lpVtbl, value.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_UserChanged(int token) {
    final hr = _vtable.remove_UserChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Headset? get headset {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Headset.asFunction<
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

    return Headset.fromPtr(value);
  }

  bool get isWireless {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsWireless.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  User? get user {
    final value = calloc<COMObject>();

    final hr = _vtable.get_User.asFunction<
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

    return User.fromPtr(value);
  }
}

final class _IGameControllerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>> add_HeadsetConnected;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_HeadsetConnected;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>> add_HeadsetDisconnected;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_HeadsetDisconnected;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<IntPtr> token)>> add_UserChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_UserChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Headset;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsWireless;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_User;
}
