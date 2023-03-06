// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import '../storagefolder.dart';
import 'queryoptions.dart';

/// @nodoc
const IID_IStorageQueryResultBase = '{c297d70d-7353-47ab-ba58-8c61425dc54b}';

/// {@category interface}
class IStorageQueryResultBase extends IInspectable {
  // vtable begins at 6, is 9 entries long.
  IStorageQueryResultBase.fromRawPointer(super.ptr);

  factory IStorageQueryResultBase.from(IInspectable interface) =>
      IStorageQueryResultBase.fromRawPointer(
          interface.toInterface(IID_IStorageQueryResultBase));

  Future<int> getItemCountAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<int>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<int>.fromRawPointer(retValuePtr,
        intType: IntType.uint32);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  StorageFolder? get folder {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return StorageFolder.fromRawPointer(retValuePtr);
  }

  int add_ContentsChanged(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_ContentsChanged(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int add_OptionsChanged(Pointer<COMObject> changedHandler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL changedHandler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL changedHandler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, changedHandler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_OptionsChanged(int eventCookie) {
    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr eventCookie)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int eventCookie)>()(
        ptr.ref.lpVtbl, eventCookie);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Future<int> findStartIndexAsync(Object? value) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<int>();
    final valuePtr = value?.intoBox().ptr.ref.lpVtbl ?? nullptr;

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, LPVTBL value,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, LPVTBL value,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, valuePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<int>.fromRawPointer(retValuePtr,
        intType: IntType.uint32);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  QueryOptions? getCurrentQueryOptions() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return QueryOptions.fromRawPointer(retValuePtr);
  }

  void applyNewQueryOptions(QueryOptions? newQueryOptions) {
    final newQueryOptionsPtr =
        newQueryOptions == null ? nullptr : newQueryOptions.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(LPVTBL lpVtbl, LPVTBL newQueryOptions)>>>()
        .value
        .asFunction<
            int Function(LPVTBL lpVtbl,
                LPVTBL newQueryOptions)>()(ptr.ref.lpVtbl, newQueryOptionsPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
