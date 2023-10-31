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
  IStorageFolderQueryOperations.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFolderQueryOperationsVtbl>().ref;

  final _IStorageFolderQueryOperationsVtbl _vtable;

  factory IStorageFolderQueryOperations.from(IInspectable interface) =>
      interface.cast(IStorageFolderQueryOperations.fromPtr,
          IID_IStorageFolderQueryOperations);

  Future<IndexedState> getIndexedStateAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetIndexedStateAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IndexedState>.fromPtr(operation,
        tResultEnumCreator: IndexedState.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  StorageFileQueryResult? createFileQueryOverloadDefault() {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFileQueryOverloadDefault.asFunction<
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

    return StorageFileQueryResult.fromPtr(value);
  }

  StorageFileQueryResult? createFileQuery(CommonFileQuery query) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFileQuery.asFunction<
        int Function(VTablePointer lpVtbl, int query,
            Pointer<COMObject> value)>()(lpVtbl, query.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
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

    final hr = _vtable.CreateFileQueryWithOptions.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
            Pointer<COMObject> value)>()(lpVtbl, queryOptions.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFileQueryResult.fromPtr(value);
  }

  StorageFolderQueryResult? createFolderQueryOverloadDefault() {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFolderQueryOverloadDefault.asFunction<
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

    return StorageFolderQueryResult.fromPtr(value);
  }

  StorageFolderQueryResult? createFolderQuery(CommonFolderQuery query) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateFolderQuery.asFunction<
        int Function(VTablePointer lpVtbl, int query,
            Pointer<COMObject> value)>()(lpVtbl, query.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
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

    final hr = _vtable.CreateFolderQueryWithOptions.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
            Pointer<COMObject> value)>()(lpVtbl, queryOptions.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolderQueryResult.fromPtr(value);
  }

  StorageItemQueryResult? createItemQuery() {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateItemQuery.asFunction<
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

    return StorageItemQueryResult.fromPtr(value);
  }

  StorageItemQueryResult? createItemQueryWithOptions(
      QueryOptions? queryOptions) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateItemQueryWithOptions.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
            Pointer<COMObject> value)>()(lpVtbl, queryOptions.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
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

    final hr = _vtable.GetFilesAsync.asFunction<
            int Function(VTablePointer lpVtbl, int query, int startIndex,
                int maxItemsToRetrieve, Pointer<COMObject> operation)>()(
        lpVtbl, query.value, startIndex, maxItemsToRetrieve, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}',
            tObjectCreator: StorageFile.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFile?>> getFilesAsyncOverloadDefaultStartAndCount(
      CommonFileQuery query) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFilesAsyncOverloadDefaultStartAndCount.asFunction<
        int Function(VTablePointer lpVtbl, int query,
            Pointer<COMObject> operation)>()(lpVtbl, query.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}',
            tObjectCreator: StorageFile.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>> getFoldersAsync(
      CommonFolderQuery query, int startIndex, int maxItemsToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFoldersAsync.asFunction<
            int Function(VTablePointer lpVtbl, int query, int startIndex,
                int maxItemsToRetrieve, Pointer<COMObject> operation)>()(
        lpVtbl, query.value, startIndex, maxItemsToRetrieve, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}',
            tObjectCreator: StorageFolder.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFolder?>> getFoldersAsyncOverloadDefaultStartAndCount(
      CommonFolderQuery query) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFoldersAsyncOverloadDefaultStartAndCount.asFunction<
        int Function(VTablePointer lpVtbl, int query,
            Pointer<COMObject> operation)>()(lpVtbl, query.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFolder?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{4669befc-ae5c-52b1-8a97-5466ce61e94e}',
            tObjectCreator: StorageFolder.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<IStorageItem?>> getItemsAsync(
      int startIndex, int maxItemsToRetrieve) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetItemsAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startIndex,
                int maxItemsToRetrieve, Pointer<COMObject> operation)>()(
        lpVtbl, startIndex, maxItemsToRetrieve, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<IStorageItem?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}',
            tObjectCreator: IStorageItem.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  bool areQueryOptionsSupported(QueryOptions? queryOptions) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.AreQueryOptionsSupported.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer queryOptions,
              Pointer<Bool> value)>()(lpVtbl, queryOptions.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool isCommonFolderQuerySupported(CommonFolderQuery query) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.IsCommonFolderQuerySupported.asFunction<
          int Function(VTablePointer lpVtbl, int query,
              Pointer<Bool> value)>()(lpVtbl, query.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool isCommonFileQuerySupported(CommonFileQuery query) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.IsCommonFileQuerySupported.asFunction<
          int Function(VTablePointer lpVtbl, int query,
              Pointer<Bool> value)>()(lpVtbl, query.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IStorageFolderQueryOperationsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetIndexedStateAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      CreateFileQueryOverloadDefault;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 query, Pointer<COMObject> value)>>
      CreateFileQuery;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer queryOptions,
              Pointer<COMObject> value)>> CreateFileQueryWithOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      CreateFolderQueryOverloadDefault;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 query, Pointer<COMObject> value)>>
      CreateFolderQuery;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer queryOptions,
              Pointer<COMObject> value)>> CreateFolderQueryWithOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      CreateItemQuery;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer queryOptions,
              Pointer<COMObject> value)>> CreateItemQueryWithOptions;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 query,
              Uint32 startIndex,
              Uint32 maxItemsToRetrieve,
              Pointer<COMObject> operation)>> GetFilesAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 query,
                  Pointer<COMObject> operation)>>
      GetFilesAsyncOverloadDefaultStartAndCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 query,
              Uint32 startIndex,
              Uint32 maxItemsToRetrieve,
              Pointer<COMObject> operation)>> GetFoldersAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Int32 query,
                  Pointer<COMObject> operation)>>
      GetFoldersAsyncOverloadDefaultStartAndCount;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 maxItemsToRetrieve,
              Pointer<COMObject> operation)>> GetItemsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer queryOptions,
              Pointer<Bool> value)>> AreQueryOptionsSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 query, Pointer<Bool> value)>>
      IsCommonFolderQuerySupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 query, Pointer<Bool> value)>>
      IsCommonFileQuerySupported;
}
