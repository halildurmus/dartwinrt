// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'notificationdata.dart';

/// @nodoc
const IID_IToastNotification4 = '{15154935-28ea-4727-88e9-c58680e2d118}';

/// {@category interface}
class IToastNotification4 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IToastNotification4.fromRawPointer(super.ptr);

  factory IToastNotification4.from(IInspectable interface) =>
      IToastNotification4.fromRawPointer(
          interface.toInterface(IID_IToastNotification4));

  NotificationData? get data {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
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

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return NotificationData.fromRawPointer(retValuePtr);
  }

  set data(NotificationData? value) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<Pointer<NativeFunction<HRESULT Function(Pointer, LPVTBL)>>>()
            .value
            .asFunction<int Function(Pointer, LPVTBL)>()(
        ptr.ref.lpVtbl, value == null ? nullptr : value.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  ToastNotificationPriority get priority {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return ToastNotificationPriority.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set priority(ToastNotificationPriority value) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<Pointer<NativeFunction<HRESULT Function(Pointer, Int32)>>>()
        .value
        .asFunction<int Function(Pointer, int)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
