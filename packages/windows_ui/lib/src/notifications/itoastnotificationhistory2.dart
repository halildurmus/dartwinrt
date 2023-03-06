// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotificationHistory2 = '{3bc3d253-2f31-4092-9129-8ad5abf067da}';

/// {@category interface}
class IToastNotificationHistory2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IToastNotificationHistory2.fromRawPointer(super.ptr);

  factory IToastNotificationHistory2.from(IInspectable interface) =>
      IToastNotificationHistory2.fromRawPointer(
          interface.toInterface(IID_IToastNotificationHistory2));

  List<ToastNotification> getHistory() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<ToastNotification>.fromRawPointer(
        retValuePtr,
        iterableIid: '{52c9428b-d37a-554d-bf55-b8685d5f552d}',
        creator: ToastNotification.fromRawPointer);
    return vectorView.toList();
  }

  List<ToastNotification> getHistoryWithId(String applicationId) {
    final retValuePtr = calloc<COMObject>();
    final applicationIdHString = applicationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr applicationId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int applicationId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, applicationIdHString, retValuePtr);

    WindowsDeleteString(applicationIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<ToastNotification>.fromRawPointer(
        retValuePtr,
        iterableIid: '{52c9428b-d37a-554d-bf55-b8685d5f552d}',
        creator: ToastNotification.fromRawPointer);
    return vectorView.toList();
  }
}
