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

import '../istorageitem.dart';
import '../storagefolder.dart';
import 'istoragequeryresultbase.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IStorageItemQueryResult = '{e8948079-9d58-47b8-b2b2-41b07f4795f9}';

/// {@category interface}
class IStorageItemQueryResult extends IInspectable
    implements IStorageQueryResultBase {
  // vtable begins at 6, is 2 entries long.
  IStorageItemQueryResult.fromRawPointer(super.ptr);

  factory IStorageItemQueryResult.from(IInspectable interface) =>
      IStorageItemQueryResult.fromRawPointer(
          interface.toInterface(IID_IStorageItemQueryResult));

  Future<List<IStorageItem>> getItemsAsync(
      int startIndex, int maxNumberOfItems) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<IStorageItem>>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, Uint32 startIndex,
                            Uint32 maxNumberOfItems, Pointer<COMObject>)>>>()
            .value
            .asFunction<
                int Function(LPVTBL, int startIndex, int maxNumberOfItems,
                    Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, startIndex, maxNumberOfItems, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVectorView<IStorageItem>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: IStorageItem.fromRawPointer,
                iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  Future<List<IStorageItem>> getItemsAsyncDefaultStartAndCount() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<List<IStorageItem>>();

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
        IAsyncOperation<IVectorView<IStorageItem>>.fromRawPointer(retValuePtr,
            creator: (Pointer<COMObject> ptr) => IVectorView.fromRawPointer(ptr,
                creator: IStorageItem.fromRawPointer,
                iterableIid: '{bb8b8418-65d1-544b-b083-6d172f568c73}'));
    completeAsyncOperation(
        asyncOperation, completer, () => asyncOperation.getResults().toList());

    return completer.future;
  }

  // IStorageQueryResultBase methods
  late final _iStorageQueryResultBase = IStorageQueryResultBase.from(this);

  @override
  Future<int> getItemCountAsync() =>
      _iStorageQueryResultBase.getItemCountAsync();

  @override
  StorageFolder? get folder => _iStorageQueryResultBase.folder;

  @override
  int add_ContentsChanged(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iStorageQueryResultBase.add_ContentsChanged(handler);

  @override
  void remove_ContentsChanged(int eventCookie) =>
      _iStorageQueryResultBase.remove_ContentsChanged(eventCookie);

  @override
  int add_OptionsChanged(
          Pointer<NativeFunction<TypedEventHandler>> changedHandler) =>
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
