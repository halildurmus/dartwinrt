// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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
import 'package:windows_system/windows_system.dart';

import 'toastcollection.dart';

/// @nodoc
const IID_IToastCollectionManager = '{2a1821fe-179d-49bc-b79d-a527920d3665}';

class IToastCollectionManager extends IInspectable {
  IToastCollectionManager.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastCollectionManagerVtbl>().ref;

  final _IToastCollectionManagerVtbl _vtable;

  factory IToastCollectionManager.from(IInspectable interface) => interface
      .cast(IToastCollectionManager.fromPtr, IID_IToastCollectionManager);

  Future<void> saveToastCollectionAsync(ToastCollection? collection) {
    final operation = calloc<COMObject>();

    final hr = _vtable.SaveToastCollectionAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer collection,
                Pointer<COMObject> operation)>()(
        lpVtbl, collection.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<List<ToastCollection?>> findAllToastCollectionsAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindAllToastCollectionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<ToastCollection?>>.fromPtr(operation,
            tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
                iterableIid: '{8928d527-db5d-5a10-ae9b-430fa0906e74}',
                tObjectCreator: ToastCollection.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<ToastCollection?> getToastCollectionAsync(String collectionId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetToastCollectionAsync.asFunction<
            int Function(VTablePointer lpVtbl, int collectionId,
                Pointer<COMObject> operation)>()(
        lpVtbl, collectionId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ToastCollection?>.fromPtr(operation,
        tResultObjectCreator: ToastCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<void> removeToastCollectionAsync(String collectionId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.RemoveToastCollectionAsync.asFunction<
            int Function(VTablePointer lpVtbl, int collectionId,
                Pointer<COMObject> operation)>()(
        lpVtbl, collectionId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> removeAllToastCollectionsAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.RemoveAllToastCollectionsAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  User? get user {
    final value = calloc<COMObject>();

    final hr = _vtable.get_User.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

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
      final hr = _vtable.get_AppId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _IToastCollectionManagerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer collection,
              Pointer<COMObject> operation)>> SaveToastCollectionAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      FindAllToastCollectionsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr collectionId,
              Pointer<COMObject> operation)>> GetToastCollectionAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr collectionId,
              Pointer<COMObject> operation)>> RemoveToastCollectionAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      RemoveAllToastCollectionsAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_User;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_AppId;
}
