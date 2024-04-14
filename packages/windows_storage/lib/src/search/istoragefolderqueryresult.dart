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

import '../storagefolder.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IStorageFolderQueryResult = '{6654c911-7d66-46fa-aecf-e4a4baa93ab8}';

class IStorageFolderQueryResult extends IInspectable
    implements IStorageQueryResultBase {
  IStorageFolderQueryResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFolderQueryResultVtbl>().ref;

  final _IStorageFolderQueryResultVtbl _vtable;

  factory IStorageFolderQueryResult.from(IInspectable interface) => interface
      .cast(IStorageFolderQueryResult.fromPtr, IID_IStorageFolderQueryResult);

  Future<List<StorageFolder?>> getFoldersAsync(
      int startIndex, int maxNumberOfItems) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFoldersAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startIndex,
                int maxNumberOfItems, Pointer<COMObject> operation)>()(
        lpVtbl, startIndex, maxNumberOfItems, operation);

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

  Future<List<StorageFolder?>> getFoldersAsyncDefaultStartAndCount() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFoldersAsyncDefaultStartAndCount.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

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

  late final _iStorageQueryResultBase = IStorageQueryResultBase.from(this);

  @override
  Future<int> getItemCountAsync() =>
      _iStorageQueryResultBase.getItemCountAsync();

  @override
  StorageFolder? get folder => _iStorageQueryResultBase.folder;

  @override
  int add_ContentsChanged(Pointer<COMObject> handler) =>
      _iStorageQueryResultBase.add_ContentsChanged(handler);

  @override
  void remove_ContentsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_ContentsChanged(eventCookie);

  @override
  int add_OptionsChanged(Pointer<COMObject> changedHandler) =>
      _iStorageQueryResultBase.add_OptionsChanged(changedHandler);

  @override
  void remove_OptionsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_OptionsChanged(eventCookie);

  @override
  Future<int> findStartIndexAsync(Object? value) =>
      _iStorageQueryResultBase.findStartIndexAsync(value);

  @override
  QueryOptions? getCurrentQueryOptions() =>
      _iStorageQueryResultBase.getCurrentQueryOptions();

  @override
  void applyNewQueryOptions(QueryOptions? newQueryOptions) =>
      _iStorageQueryResultBase.applyNewQueryOptions(newQueryOptions);
}

final class _IStorageFolderQueryResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 maxNumberOfItems,
              Pointer<COMObject> operation)>> GetFoldersAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetFoldersAsyncDefaultStartAndCount;
}
