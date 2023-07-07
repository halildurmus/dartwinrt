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

import 'toastcollection.dart';

/// @nodoc
const IID_IToastCollectionManager = '{2a1821fe-179d-49bc-b79d-a527920d3665}';

class IToastCollectionManager extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IToastCollectionManager.fromPtr(super.ptr);

  factory IToastCollectionManager.from(IInspectable interface) =>
      IToastCollectionManager.fromPtr(
          interface.toInterface(IID_IToastCollectionManager));

  Future<void> saveToastCollectionAsync(ToastCollection? collection) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer collection,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer collection,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, collection?.ptr.ref.lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<List<ToastCollection?>> findAllToastCollectionsAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ToastCollection?>>.fromPtr(operation,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: ToastCollection.fromPtr,
                iterableIid: '{8928d527-db5d-5a10-ae9b-430fa0906e74}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<ToastCollection?> getToastCollectionAsync(String collectionId) {
    final operation = calloc<COMObject>();
    final collectionIdHString = collectionId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr collectionId,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int collectionId,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, collectionIdHString, operation);

    WindowsDeleteString(collectionIdHString);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ToastCollection?>.fromPtr(operation,
        creator: ToastCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> removeToastCollectionAsync(String collectionId) {
    final operation = calloc<COMObject>();
    final collectionIdHString = collectionId.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr collectionId,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int collectionId,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, collectionIdHString, operation);

    WindowsDeleteString(collectionIdHString);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> removeAllToastCollectionsAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> operation)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> operation)>()(ptr.ref.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  User? get user {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
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
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return User.fromPtr(value);
  }

  String get appId {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      WindowsDeleteString(value.value);
      free(value);
    }
  }
}
