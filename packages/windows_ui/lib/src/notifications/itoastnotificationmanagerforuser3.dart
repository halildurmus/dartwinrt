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

import 'toastnotificationmanagerforuser.dart';
import 'toastnotificationmode.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser3 =
    '{3efcb176-6cc1-56dc-973b-251f7aacb1c5}';

class IToastNotificationManagerForUser3 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IToastNotificationManagerForUser3.fromPtr(super.ptr);

  factory IToastNotificationManagerForUser3.from(IInspectable interface) =>
      interface.cast(IToastNotificationManagerForUser3.fromPtr,
          IID_IToastNotificationManagerForUser3);

  ToastNotificationMode get notificationMode {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          VTablePointer handler, Pointer<IntPtr> token)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_NotificationModeChanged(int token) {
    final hr =
        vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
