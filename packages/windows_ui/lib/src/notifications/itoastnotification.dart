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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotification = '{997e2675-059e-4e60-8b06-1760917c8b80}';

class IToastNotification extends IInspectable {
  IToastNotification.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotificationVtbl>().ref;

  final _IToastNotificationVtbl _vtable;

  factory IToastNotification.from(IInspectable interface) =>
      interface.cast(IToastNotification.fromPtr, IID_IToastNotification);

  XmlDocument? get content {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Content.asFunction<
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

    return XmlDocument.fromPtr(value);
  }

  set expirationTime(DateTime? value) {
    final hr = _vtable.put_ExpirationTime.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  DateTime? get expirationTime {
    final value = calloc<COMObject>();

    final hr = _vtable.get_ExpirationTime.asFunction<
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

    return IReference<DateTime?>.fromPtr(value,
            referenceIid: '{5541d8a7-497c-5aa4-86fc-7713adbf2a2c}')
        .value;
  }

  int add_Dismissed(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Dismissed.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Dismissed(int token) {
    final hr = _vtable.remove_Dismissed
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_Activated(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Activated.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Activated(int token) {
    final hr = _vtable.remove_Activated
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_Failed(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_Failed.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_Failed(int token) {
    final hr = _vtable.remove_Failed
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IToastNotificationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Content;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_ExpirationTime;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_ExpirationTime;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Dismissed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Dismissed;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Activated;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Activated;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_Failed;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_Failed;
}
