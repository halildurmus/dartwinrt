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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'toastcollection.dart';

/// @nodoc
const IID_IToastCollectionManager = '{2a1821fe-179d-49bc-b79d-a527920d3665}';

/// {@category interface}
class IToastCollectionManager extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  IToastCollectionManager.fromRawPointer(super.ptr);

  factory IToastCollectionManager.from(IInspectable interface) =>
      IToastCollectionManager.fromRawPointer(
          interface.toInterface(IID_IToastCollectionManager));

  Future<void> saveToastCollectionAsync(ToastCollection? collection) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL, LPVTBL collection, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, LPVTBL collection, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl,
        collection == null ? nullptr : collection.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<List<ToastCollection>> findAllToastCollectionsAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<ToastCollection>>();

    final hr = ptr.ref.vtable
        .elementAt(7)
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

    final asyncOperation =
        IAsyncOperation<IVectorView<ToastCollection>>.fromRawPointer(
            retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: ToastCollection.fromRawPointer,
                iterableIid: '{8928d527-db5d-5a10-ae9b-430fa0906e74}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<ToastCollection?> getToastCollectionAsync(String collectionId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<ToastCollection?>();
    final collectionIdHString = convertToHString(collectionId);

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, IntPtr collectionId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int collectionId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, collectionIdHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(collectionIdHString);

    final asyncOperation = IAsyncOperation<ToastCollection?>.fromRawPointer(
        retValuePtr,
        creator: ToastCollection.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<void> removeToastCollectionAsync(String collectionId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();
    final collectionIdHString = convertToHString(collectionId);

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, IntPtr collectionId,
                            Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int collectionId, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, collectionIdHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(collectionIdHString);

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  Future<void> removeAllToastCollectionsAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<void>();

    final hr = ptr.ref.vtable
        .elementAt(10)
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

    final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
    completeAsyncAction(asyncAction, completer);

    return completer.future;
  }

  User? get user {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
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

  String get appId {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
