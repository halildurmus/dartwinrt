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
import 'package:windows_system/windows_system.dart';

import 'toastnotificationhistory.dart';
import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser =
    '{79ab57f6-43fe-487b-8a7f-99567200ae94}';

class IToastNotificationManagerForUser extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IToastNotificationManagerForUser.fromPtr(super.ptr);

  factory IToastNotificationManagerForUser.from(IInspectable interface) =>
      IToastNotificationManagerForUser.fromPtr(
          interface.toInterface(IID_IToastNotificationManagerForUser));

  ToastNotifier? createToastNotifier() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ToastNotifier.fromPtr(result);
  }

  ToastNotifier? createToastNotifierWithId(String applicationId) {
    final result = calloc<COMObject>();
    final applicationIdHString = applicationId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr applicationId,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int applicationId,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, applicationIdHString, result);

    WindowsDeleteString(applicationIdHString);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ToastNotifier.fromPtr(result);
  }

  ToastNotificationHistory? get history {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
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

    if (value.isNull) {
      free(value);
      return null;
    }

    return ToastNotificationHistory.fromPtr(value);
  }

  User? get user {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    if (value.isNull) {
      free(value);
      return null;
    }

    return User.fromPtr(value);
  }
}
