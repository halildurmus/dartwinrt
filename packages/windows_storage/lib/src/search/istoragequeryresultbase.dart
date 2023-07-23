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
  // vtable begins at 6, is 9 entries long.
  IStorageQueryResultBase.fromPtr(super.ptr);

  factory IStorageQueryResultBase.from(IInspectable interface) =>
      IStorageQueryResultBase.fromPtr(
          interface.toInterface(IID_IStorageQueryResultBase));

  Future<int> getItemCountAsync() {
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
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, intType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  StorageFolder? get folder {
    final container = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> container)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> container)>()(ptr.ref.lpVtbl, container);

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
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer handler,
                              Pointer<IntPtr> eventCookie)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer handler,
                      Pointer<IntPtr> eventCookie)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_ContentsChanged(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int add_OptionsChanged(Pointer<COMObject> changedHandler) {
    final eventCookie = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer changedHandler,
                              Pointer<IntPtr> eventCookie)>>>()
              .value
              .asFunction<
                  int Function(
                      VTablePointer lpVtbl,
                      VTablePointer changedHandler,
                      Pointer<IntPtr> eventCookie)>()(
          ptr.ref.lpVtbl, changedHandler.ref.lpVtbl, eventCookie);

      if (FAILED(hr)) throwWindowsException(hr);

      return eventCookie.value;
    } finally {
      free(eventCookie);
    }
  }

  void remove_OptionsChanged(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<int> findStartIndexAsync(Object? value) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer value,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer value,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, value?.intoBox().lpVtbl ?? nullptr, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<int>.fromPtr(operation, intType: IntType.uint32);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  QueryOptions? getCurrentQueryOptions() {
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
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return QueryOptions.fromPtr(value);
  }

  void applyNewQueryOptions(QueryOptions? newQueryOptions) {
    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer newQueryOptions)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, VTablePointer newQueryOptions)>()(
        ptr.ref.lpVtbl, newQueryOptions.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
