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

import 'fileattributes.dart';
import 'fileproperties/basicproperties.dart';
import 'namecollisionoption.dart';
import 'storagedeleteoption.dart';
import 'storageitemtypes.dart';

/// @nodoc
const IID_IStorageItem = '{4207a996-ca2f-42f7-bde8-8b10457a7f30}';

/// {@category interface}
class IStorageItem extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IStorageItem.fromPtr(super.ptr);

  factory IStorageItem.from(IInspectable interface) =>
      IStorageItem.fromPtr(interface.toInterface(IID_IStorageItem));

  Future<void> renameAsyncOverloadDefaultOptions(String desiredName) {
    final retValuePtr = calloc<COMObject>();
    final desiredNameHString = desiredName.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr desiredName,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, desiredNameHString, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> renameAsync(String desiredName, NameCollisionOption option) {
    final retValuePtr = calloc<COMObject>();
    final desiredNameHString = desiredName.toHString();

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
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int desiredName,
                        int option, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, desiredNameHString, option.value, retValuePtr);

    WindowsDeleteString(desiredNameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> deleteAsyncOverloadDefaultOptions() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
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

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<void> deleteAsync(StorageDeleteOption option) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 option,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int option,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, option.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IAsyncAction.fromPtr(retValuePtr).toFuture();
  }

  Future<BasicProperties?> getBasicPropertiesAsync() {
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

    final asyncOperation = IAsyncOperation<BasicProperties?>.fromPtr(
        retValuePtr,
        creator: BasicProperties.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  String get name {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get path {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  FileAttributes get attributes {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<Uint32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Uint32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return FileAttributes.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  DateTime get dateCreated {
    final retValuePtr = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int64> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int64> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartDateTime();
    } finally {
      free(retValuePtr);
    }
  }

  bool isOfType(StorageItemTypes type) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(15)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 type,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int type,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, type.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
