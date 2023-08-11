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

import 'fileattributes.dart';
import 'fileproperties/basicproperties.dart';
import 'namecollisionoption.dart';
import 'storagedeleteoption.dart';
import 'storageitemtypes.dart';

/// @nodoc
const IID_IStorageItem = '{4207a996-ca2f-42f7-bde8-8b10457a7f30}';

class IStorageItem extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IStorageItem.fromPtr(super.ptr);

  factory IStorageItem.from(IInspectable interface) =>
      interface.cast(IStorageItem.fromPtr, IID_IStorageItem);

  Future<void> renameAsyncOverloadDefaultOptions(String desiredName) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> renameAsync(String desiredName, NameCollisionOption option) {
    final operation = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Int32 option,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        int option, Pointer<COMObject> operation)>()(
            ptr.ref.lpVtbl, desiredName.toHString(), option.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> deleteAsyncOverloadDefaultOptions() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
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

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<void> deleteAsync(StorageDeleteOption option) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 option,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int option,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, option.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  Future<BasicProperties?> getBasicPropertiesAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(10)
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

    final asyncOperation = IAsyncOperation<BasicProperties?>.fromPtr(operation,
        creator: BasicProperties.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  String get name {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(11)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get path {
    final value = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  FileAttributes get attributes {
    final value = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(13)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Uint32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Uint32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return FileAttributes.from(value.value);
    } finally {
      free(value);
    }
  }

  DateTime get dateCreated {
    final value = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int64> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int64> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }

  bool isOfType(StorageItemTypes type) {
    final value = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 type,
                          Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int type,
                  Pointer<Bool> value)>()(ptr.ref.lpVtbl, type.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}
