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

import 'toastcollectionmanager.dart';
import 'toastnotificationhistory.dart';
import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotificationManagerForUser2 =
    '{679c64b7-81ab-42c2-8819-c958767753f4}';

/// {@category interface}
class IToastNotificationManagerForUser2 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IToastNotificationManagerForUser2.fromPtr(super.ptr);

  factory IToastNotificationManagerForUser2.from(IInspectable interface) =>
      IToastNotificationManagerForUser2.fromPtr(
          interface.toInterface(IID_IToastNotificationManagerForUser2));

  Future<ToastNotifier?> getToastNotifierForToastCollectionIdAsync(
      String collectionId) {
    final retValuePtr = calloc<COMObject>();
    final collectionIdHString = collectionId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr collectionId,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int collectionId,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, collectionIdHString, retValuePtr);

    WindowsDeleteString(collectionIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ToastNotifier?>.fromPtr(retValuePtr,
        creator: ToastNotifier.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<ToastNotificationHistory?> getHistoryForToastCollectionIdAsync(
      String collectionId) {
    final retValuePtr = calloc<COMObject>();
    final collectionIdHString = collectionId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr collectionId,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int collectionId,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, collectionIdHString, retValuePtr);

    WindowsDeleteString(collectionIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ToastNotificationHistory?>.fromPtr(
        retValuePtr,
        creator: ToastNotificationHistory.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  ToastCollectionManager? getToastCollectionManager() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastCollectionManager.fromPtr(retValuePtr);
  }

  ToastCollectionManager? getToastCollectionManagerWithAppId(String appId) {
    final retValuePtr = calloc<COMObject>();
    final appIdHString = appId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr appId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int appId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, appIdHString, retValuePtr);

    WindowsDeleteString(appIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return ToastCollectionManager.fromPtr(retValuePtr);
  }
}
