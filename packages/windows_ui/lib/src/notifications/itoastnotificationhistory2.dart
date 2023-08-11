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

import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotificationHistory2 = '{3bc3d253-2f31-4092-9129-8ad5abf067da}';

class IToastNotificationHistory2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IToastNotificationHistory2.fromPtr(super.ptr);

  factory IToastNotificationHistory2.from(IInspectable interface) => interface
      .cast(IToastNotificationHistory2.fromPtr, IID_IToastNotificationHistory2);

  List<ToastNotification?> getHistory() {
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
      throwWindowsException(hr);
    }

    return IVectorView<ToastNotification?>.fromPtr(result,
            iterableIid: '{52c9428b-d37a-554d-bf55-b8685d5f552d}',
            creator: ToastNotification.fromPtr)
        .toList();
  }

  List<ToastNotification?> getHistoryWithId(String applicationId) {
    final result = calloc<COMObject>();

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
            ptr.ref.lpVtbl, applicationId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<ToastNotification?>.fromPtr(result,
            iterableIid: '{52c9428b-d37a-554d-bf55-b8685d5f552d}',
            creator: ToastNotification.fromPtr)
        .toList();
  }
}
