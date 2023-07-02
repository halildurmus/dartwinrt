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
    final retValuePtr = calloc<COMObject>();
    final collectionPtr =
        collection == null ? nullptr : collection.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer collection,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer collection,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, collectionPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<List<ToastCollection?>> findAllToastCollectionsAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
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

    final asyncOperation =
        IAsyncOperation<IVectorView<ToastCollection?>>.fromPtr(retValuePtr,
            creator: (ptr) => IVectorView.fromPtr(ptr,
                creator: ToastCollection.fromPtr,
                iterableIid: '{8928d527-db5d-5a10-ae9b-430fa0906e74}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<ToastCollection?> getToastCollectionAsync(String collectionId) {
    final retValuePtr = calloc<COMObject>();
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

    final asyncOperation = IAsyncOperation<ToastCollection?>.fromPtr(
        retValuePtr,
        creator: ToastCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> removeToastCollectionAsync(String collectionId) {
    final retValuePtr = calloc<COMObject>();
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

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> removeAllToastCollectionsAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(10)
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

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  User? get user {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return User.fromPtr(retValuePtr);
  }

  String get appId {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
