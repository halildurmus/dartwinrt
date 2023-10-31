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

import '../storagefolder.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IStorageQueryResultBase = '{c297d70d-7353-47ab-ba58-8c61425dc54b}';

class IStorageQueryResultBase extends IInspectable {
  IStorageQueryResultBase.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageQueryResultBaseVtbl>().ref;

  final _IStorageQueryResultBaseVtbl _vtable;

  factory IStorageQueryResultBase.from(IInspectable interface) => interface
      .cast(IStorageQueryResultBase.fromPtr, IID_IStorageQueryResultBase);

  Future<int> getItemCountAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetItemCountAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, tResultIntType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  StorageFolder? get folder {
    final container = calloc<COMObject>();

    final hr = _vtable.get_Folder.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> container)>()(
        lpVtbl, container);

    if (FAILED(hr)) {
      free(container);
      throwWindowsException(hr);
    }

    if (container.isNull) {
      free(container);
      return null;
    }

    return StorageFolder.fromPtr(container);
  }

  int add_ContentsChanged(Pointer<COMObject> handler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_ContentsChanged.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> eventCookie)>()(
          lpVtbl, handler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_ContentsChanged(int eventCookie) {
    final hr = _vtable.remove_ContentsChanged
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_OptionsChanged(Pointer<COMObject> changedHandler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr = _vtable.add_OptionsChanged.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer changedHandler,
                  Pointer<IntPtr> eventCookie)>()(
          lpVtbl, changedHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_OptionsChanged(int eventCookie) {
    final hr = _vtable.remove_OptionsChanged
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<int> findStartIndexAsync(Object? value) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindStartIndexAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value,
                Pointer<COMObject> operation)>()(
        lpVtbl, value?.boxValue().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, tResultIntType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  QueryOptions? getCurrentQueryOptions() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetCurrentQueryOptions.asFunction<
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

    return QueryOptions.fromPtr(value);
  }

  void applyNewQueryOptions(QueryOptions? newQueryOptions) {
    final hr = _vtable.ApplyNewQueryOptions.asFunction<
        int Function(VTablePointer lpVtbl,
            VTablePointer newQueryOptions)>()(lpVtbl, newQueryOptions.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IStorageQueryResultBaseVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetItemCountAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> container)>> get_Folder;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> eventCookie)>> add_ContentsChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr eventCookie)>>
      remove_ContentsChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer changedHandler,
              Pointer<IntPtr> eventCookie)>> add_OptionsChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr eventCookie)>>
      remove_OptionsChanged;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer value,
              Pointer<COMObject> operation)>> FindStartIndexAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetCurrentQueryOptions;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer newQueryOptions)>>
      ApplyNewQueryOptions;
}
