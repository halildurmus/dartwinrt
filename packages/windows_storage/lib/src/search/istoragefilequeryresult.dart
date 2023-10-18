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

import '../storagefile.dart';
import '../storagefolder.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IStorageFileQueryResult = '{52fda447-2baa-412c-b29f-d4b1778efa1e}';

class IStorageFileQueryResult extends IInspectable
    implements IStorageQueryResultBase {
  IStorageFileQueryResult.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageFileQueryResultVtbl>().ref;

  final _IStorageFileQueryResultVtbl _vtable;

  factory IStorageFileQueryResult.from(IInspectable interface) => interface
      .cast(IStorageFileQueryResult.fromPtr, IID_IStorageFileQueryResult);

  Future<List<StorageFile?>> getFilesAsync(
      int startIndex, int maxNumberOfItems) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFilesAsync.asFunction<
            int Function(VTablePointer lpVtbl, int startIndex,
                int maxNumberOfItems, Pointer<COMObject> operation)>()(
        lpVtbl, startIndex, maxNumberOfItems, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  Future<List<StorageFile?>> getFilesAsyncDefaultStartAndCount() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFilesAsyncDefaultStartAndCount.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<StorageFile?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: StorageFile.fromPtr,
            iterableIid: '{9ac00304-83ea-5688-87b6-ae38aab65d0b}'));
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

final class _IStorageFileQueryResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 startIndex,
              Uint32 maxNumberOfItems,
              Pointer<COMObject> operation)>> GetFilesAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetFilesAsyncDefaultStartAndCount;
}
