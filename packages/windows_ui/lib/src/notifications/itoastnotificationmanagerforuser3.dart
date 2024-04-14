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

import 'toastnotificationmanagerforuser.dart';
import 'toastnotificationmode.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser3 =
    '{3efcb176-6cc1-56dc-973b-251f7aacb1c5}';

class IToastNotificationManagerForUser3 extends IInspectable {
  IToastNotificationManagerForUser3.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IToastNotificationManagerForUser3Vtbl>().ref;

  final _IToastNotificationManagerForUser3Vtbl _vtable;

  factory IToastNotificationManagerForUser3.from(IInspectable interface) =>
      interface.cast(IToastNotificationManagerForUser3.fromPtr,
          IID_IToastNotificationManagerForUser3);

  ToastNotificationMode get notificationMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_NotificationMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ToastNotificationMode.from(value.value);
    } finally {
      free(value);
    }
  }

  int add_NotificationModeChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_NotificationModeChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_NotificationModeChanged(int token) {
    final hr = _vtable.remove_NotificationModeChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IToastNotificationManagerForUser3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_NotificationMode;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_NotificationModeChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_NotificationModeChanged;
}
