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

import 'toastcollectionmanager.dart';
import 'toastnotificationhistory.dart';
import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser2 =
    '{679c64b7-81ab-42c2-8819-c958767753f4}';

class IToastNotificationManagerForUser2 extends IInspectable {
  IToastNotificationManagerForUser2.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IToastNotificationManagerForUser2Vtbl>().ref;

  final _IToastNotificationManagerForUser2Vtbl _vtable;

  factory IToastNotificationManagerForUser2.from(IInspectable interface) =>
      interface.cast(IToastNotificationManagerForUser2.fromPtr,
          IID_IToastNotificationManagerForUser2);

  Future<ToastNotifier?> getToastNotifierForToastCollectionIdAsync(
      String collectionId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetToastNotifierForToastCollectionIdAsync.asFunction<
            int Function(VTablePointer lpVtbl, int collectionId,
                Pointer<COMObject> operation)>()(
        lpVtbl, collectionId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ToastNotifier?>.fromPtr(operation,
        tResultObjectCreator: ToastNotifier.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<ToastNotificationHistory?> getHistoryForToastCollectionIdAsync(
      String collectionId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetHistoryForToastCollectionIdAsync.asFunction<
            int Function(VTablePointer lpVtbl, int collectionId,
                Pointer<COMObject> operation)>()(
        lpVtbl, collectionId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ToastNotificationHistory?>.fromPtr(
        operation,
        tResultObjectCreator: ToastNotificationHistory.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  ToastCollectionManager? getToastCollectionManager() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetToastCollectionManager.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ToastCollectionManager.fromPtr(result);
  }

  ToastCollectionManager? getToastCollectionManagerWithAppId(String appId) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetToastCollectionManagerWithAppId.asFunction<
        int Function(VTablePointer lpVtbl, int appId,
            Pointer<COMObject> result)>()(lpVtbl, appId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return ToastCollectionManager.fromPtr(result);
  }
}

final class _IToastNotificationManagerForUser2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr collectionId,
                  Pointer<COMObject> operation)>>
      GetToastNotifierForToastCollectionIdAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr collectionId,
                  Pointer<COMObject> operation)>>
      GetHistoryForToastCollectionIdAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetToastCollectionManager;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr appId,
              Pointer<COMObject> result)>> GetToastCollectionManagerWithAppId;
}
