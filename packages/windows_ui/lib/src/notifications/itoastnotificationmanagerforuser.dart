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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'toastnotificationhistory.dart';
import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser =
    '{79ab57f6-43fe-487b-8a7f-99567200ae94}';

/// {@category interface}
class IToastNotificationManagerForUser extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IToastNotificationManagerForUser.fromRawPointer(super.ptr);

  factory IToastNotificationManagerForUser.from(IInspectable interface) =>
      IToastNotificationManagerForUser.fromRawPointer(
          interface.toInterface(IID_IToastNotificationManagerForUser));

  ToastNotifier? createToastNotifier() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastNotifier.fromRawPointer(retValuePtr);
  }

  ToastNotifier? createToastNotifierWithId(String applicationId) {
    final retValuePtr = calloc<COMObject>();
    final applicationIdHString = convertToHString(applicationId);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, IntPtr applicationId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int applicationId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, applicationIdHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(applicationIdHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastNotifier.fromRawPointer(retValuePtr);
  }

  ToastNotificationHistory? get history {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastNotificationHistory.fromRawPointer(retValuePtr);
  }

  User? get user {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return User.fromRawPointer(retValuePtr);
  }
}
