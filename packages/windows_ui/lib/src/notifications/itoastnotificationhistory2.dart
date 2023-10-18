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
  IToastNotificationHistory2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotificationHistory2Vtbl>().ref;

  final _IToastNotificationHistory2Vtbl _vtable;

  factory IToastNotificationHistory2.from(IInspectable interface) => interface
      .cast(IToastNotificationHistory2.fromPtr, IID_IToastNotificationHistory2);

  List<ToastNotification?> getHistory() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetHistory.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

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

    final hr = _vtable.GetHistoryWithId.asFunction<
            int Function(VTablePointer lpVtbl, int applicationId,
                Pointer<COMObject> result)>()(
        lpVtbl, applicationId.toHString(), result);

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

final class _IToastNotificationHistory2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> GetHistory;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr applicationId,
              Pointer<COMObject> result)>> GetHistoryWithId;
}
