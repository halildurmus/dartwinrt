// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'toastnotificationmanagerforuser.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser3 =
    '{3efcb176-6cc1-56dc-973b-251f7aacb1c5}';

/// {@category interface}
class IToastNotificationManagerForUser3 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IToastNotificationManagerForUser3.fromRawPointer(super.ptr);

  factory IToastNotificationManagerForUser3.from(IInspectable interface) =>
      IToastNotificationManagerForUser3.fromRawPointer(
          interface.toInterface(IID_IToastNotificationManagerForUser3));

  ToastNotificationMode get notificationMode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return ToastNotificationMode.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int add_NotificationModeChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL handler, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL handler, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_NotificationModeChanged(int token) {
    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
