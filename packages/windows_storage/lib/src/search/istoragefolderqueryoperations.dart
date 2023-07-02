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
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
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

    final asyncOperation = IAsyncOperation<IndexedState>.fromPtr(retValuePtr,
        enumCreator: IndexedState.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  StorageFileQueryResult? createFileQueryOverloadDefault() {
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFileQueryResult.fromPtr(retValuePtr);
  }

  StorageFileQueryResult? createFileQuery(CommonFileQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFileQueryResult.fromPtr(retValuePtr);
  }

  StorageFileQueryResult? createFileQueryWithOptions(
      QueryOptions? queryOptions) {
    final retValuePtr = calloc<COMObject>();
    final queryOptionsPtr =
        queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer queryOptions,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, queryOptionsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFileQueryResult.fromPtr(retValuePtr);
  }

  StorageFolderQueryResult? createFolderQueryOverloadDefault() {
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

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolderQueryResult.fromPtr(retValuePtr);
  }

  StorageFolderQueryResult? createFolderQuery(CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolderQueryResult.fromPtr(retValuePtr);
  }

  StorageFolderQueryResult? createFolderQueryWithOptions(
      QueryOptions? queryOptions) {
    final retValuePtr = calloc<COMObject>();
    final queryOptionsPtr =
        queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer queryOptions,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, queryOptionsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolderQueryResult.fromPtr(retValuePtr);
  }

  StorageItemQueryResult? createItemQuery() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(13)
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

    return StorageItemQueryResult.fromPtr(retValuePtr);
  }

  StorageItemQueryResult? createItemQueryWithOptions(
      QueryOptions? queryOptions) {
    final retValuePtr = calloc<COMObject>();
    final queryOptionsPtr =
        queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer queryOptions,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, queryOptionsPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageItemQueryResult.fromPtr(retValuePtr);
  }

  Future<List<StorageFile?>> getFilesAsync(
      CommonFileQuery query, int startIndex, int maxItemsToRetrieve) {
    final retValuePtr = calloc<COMObject>();

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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query, int startIndex,
                    int maxItemsToRetrieve, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        query.value,
        startIndex,
        maxItemsToRetrieve,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFile?>> getFilesAsyncOverloadDefaultStartAndCount(
      CommonFileQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>> getFoldersAsync(
      CommonFolderQuery query, int startIndex, int maxItemsToRetrieve) {
    final retValuePtr = calloc<COMObject>();

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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query, int startIndex,
                    int maxItemsToRetrieve, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        query.value,
        startIndex,
        maxItemsToRetrieve,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFolder.fromPtr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>> getFoldersAsyncOverloadDefaultStartAndCount(
      CommonFolderQuery query) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 query,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int query,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, query.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFolder.fromPtr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<IStorageItem?>> getItemsAsync(
      int startIndex, int maxItemsToRetrieve) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 startIndex,
                            Uint32 maxItemsToRetrieve,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int startIndex,
                    int maxItemsToRetrieve, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, startIndex, maxItemsToRetrieve, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<IStorageItem?>>.fromPtr(
        retValuePtr,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: IStorageItem.fromPtr,
            iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  bool areQueryOptionsSupported(QueryOptions? queryOptions) {
    final retValuePtr = calloc<Bool>();

    try {
      final queryOptionsPtr =
          queryOptions == null ? nullptr : queryOptions.ptr.ref.lpVtbl;

      final hr = ptr.ref.vtable
              .elementAt(20)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer queryOptions,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, queryOptionsPtr, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  bool isCommonFolderQuerySupported(CommonFolderQuery query) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(21)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Int32 query,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int query,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, query.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  bool isCommonFileQuerySupported(CommonFileQuery query) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(22)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Int32 query,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int query,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, query.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
