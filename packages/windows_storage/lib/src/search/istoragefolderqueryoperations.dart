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

import '../istorageitem.dart';
import '../storagefile.dart';
import '../storagefolder.dart';
import 'commonfilequery.dart';
import 'commonfolderquery.dart';
import 'indexedstate.dart';
import 'queryoptions.dart';
import 'storagefilequeryresult.dart';
import 'storagefolderqueryresult.dart';
import 'storageitemqueryresult.dart';

/// @nodoc
const IID_IStorageFolderQueryOperations =
    '{cb43ccc9-446b-4a4f-be97-757771be5203}';

class IStorageFolderQueryOperations extends IInspectable {
  // vtable begins at 6, is 17 entries long.
  IStorageFolderQueryOperations.fromPtr(super.ptr);

  factory IStorageFolderQueryOperations.from(IInspectable interface) =>
      IStorageFolderQueryOperations.fromPtr(
          interface.toInterface(IID_IStorageFolderQueryOperations));

  Future<IndexedState> getIndexedStateAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
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
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IndexedState>.fromPtr(operation,
        enumCreator: IndexedState.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  StorageFileQueryResult? createFileQueryOverloadDefault() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
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

    return StorageFileQueryResult.fromPtr(value);
  }

  StorageFileQueryResult? createFileQuery(CommonFileQuery query) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, query.value, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFileQueryResult.fromPtr(value);
  }

  StorageFileQueryResult? createFileQueryWithOptions(
      QueryOptions? queryOptions) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer queryOptions,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                    Pointer<COMObject> value)>()(ptr.ref.lpVtbl,
        queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFileQueryResult.fromPtr(value);
  }

  StorageFolderQueryResult? createFolderQueryOverloadDefault() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
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

    return StorageFolderQueryResult.fromPtr(value);
  }

  StorageFolderQueryResult? createFolderQuery(CommonFolderQuery query) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, query.value, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolderQueryResult.fromPtr(value);
  }

  StorageFolderQueryResult? createFolderQueryWithOptions(
      QueryOptions? queryOptions) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer queryOptions,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                    Pointer<COMObject> value)>()(ptr.ref.lpVtbl,
        queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolderQueryResult.fromPtr(value);
  }

  StorageItemQueryResult? createItemQuery() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
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

    return StorageItemQueryResult.fromPtr(value);
  }

  StorageItemQueryResult? createItemQueryWithOptions(
      QueryOptions? queryOptions) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer queryOptions,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                    Pointer<COMObject> value)>()(ptr.ref.lpVtbl,
        queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throw WindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageItemQueryResult.fromPtr(value);
  }

  Future<List<StorageFile?>> getFilesAsync(
      CommonFileQuery query, int startIndex, int maxItemsToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 query,
                            Uint32 startIndex,
                            Uint32 maxItemsToRetrieve,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query, int startIndex,
                    int maxItemsToRetrieve, Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, query.value, startIndex, maxItemsToRetrieve, operation);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFile?>> getFilesAsyncOverloadDefaultStartAndCount(
      CommonFileQuery query) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, query.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>> getFoldersAsync(
      CommonFolderQuery query, int startIndex, int maxItemsToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 query,
                            Uint32 startIndex,
                            Uint32 maxItemsToRetrieve,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query, int startIndex,
                    int maxItemsToRetrieve, Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, query.value, startIndex, maxItemsToRetrieve, operation);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFolder.fromPtr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>> getFoldersAsyncOverloadDefaultStartAndCount(
      CommonFolderQuery query) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, query.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFolder.fromPtr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<IStorageItem?>> getItemsAsync(
      int startIndex, int maxItemsToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 startIndex,
                            Uint32 maxItemsToRetrieve,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int startIndex,
                    int maxItemsToRetrieve, Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, startIndex, maxItemsToRetrieve, operation);

    if (FAILED(hr)) {
      free(operation);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<IStorageItem?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: IStorageItem.fromPtr,
            iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  bool areQueryOptionsSupported(QueryOptions? queryOptions) {
    final value = calloc<Bool>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(20)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer queryOptions,
                                  Pointer<Bool> value)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl,
                          VTablePointer queryOptions, Pointer<Bool> value)>()(
              ptr.ref.lpVtbl,
              queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl,
              value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool isCommonFolderQuerySupported(CommonFolderQuery query) {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 query,
                          Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int query,
                  Pointer<Bool> value)>()(ptr.ref.lpVtbl, query.value, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool isCommonFileQuerySupported(CommonFileQuery query) {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 query,
                          Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int query,
                  Pointer<Bool> value)>()(ptr.ref.lpVtbl, query.value, value);

      if (FAILED(hr)) throw WindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}
