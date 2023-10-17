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
import 'package:windows_system/windows_system.dart';

import '../fileaccessmode.dart';
import '../storageopenoptions.dart';
import '../storagestreamtransaction.dart';
import 'fileopendisposition.dart';
import 'irandomaccessstream.dart';

/// @nodoc
const IID_IFileRandomAccessStreamStatics =
    '{73550107-3b57-4b5d-8345-554d2fc621f0}';

class IFileRandomAccessStreamStatics extends IInspectable {
  IFileRandomAccessStreamStatics.fromPtr(super.ptr);

  factory IFileRandomAccessStreamStatics.from(IInspectable interface) =>
      interface.cast(IFileRandomAccessStreamStatics.fromPtr,
          IID_IFileRandomAccessStreamStatics);

  Future<IRandomAccessStream?> openAsync(
      String filePath, FileAccessMode accessMode) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr filePath,
                            Int32 accessMode, Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int filePath, int accessMode,
                    Pointer<COMObject> operation)>()(
        lpVtbl, filePath.toHString(), accessMode.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        operation,
        creator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IRandomAccessStream?> openWithOptionsAsync(
      String filePath,
      FileAccessMode accessMode,
      StorageOpenOptions sharingOptions,
      FileOpenDisposition openDisposition) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr filePath,
                            Int32 accessMode,
                            Uint32 sharingOptions,
                            Int32 openDisposition,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int filePath,
                    int accessMode,
                    int sharingOptions,
                    int openDisposition,
                    Pointer<COMObject> operation)>()(
        lpVtbl,
        filePath.toHString(),
        accessMode.value,
        sharingOptions.value,
        openDisposition.value,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        operation,
        creator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageStreamTransaction?> openTransactedWriteAsync(String filePath) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr filePath,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int filePath,
                    Pointer<COMObject> operation)>()(
        lpVtbl, filePath.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageStreamTransaction?>.fromPtr(
        operation,
        creator: StorageStreamTransaction.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageStreamTransaction?> openTransactedWriteWithOptionsAsync(
      String filePath,
      StorageOpenOptions openOptions,
      FileOpenDisposition openDisposition) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr filePath,
                            Uint32 openOptions,
                            Int32 openDisposition,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int filePath,
                    int openOptions,
                    int openDisposition,
                    Pointer<COMObject> operation)>()(
        lpVtbl,
        filePath.toHString(),
        openOptions.value,
        openDisposition.value,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageStreamTransaction?>.fromPtr(
        operation,
        creator: StorageStreamTransaction.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IRandomAccessStream?> openForUserAsync(
      User? user, String filePath, FileAccessMode accessMode) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer user,
                            IntPtr filePath,
                            Int32 accessMode,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer user,
                    int filePath,
                    int accessMode,
                    Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, filePath.toHString(), accessMode.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        operation,
        creator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IRandomAccessStream?> openForUserWithOptionsAsync(
      User? user,
      String filePath,
      FileAccessMode accessMode,
      StorageOpenOptions sharingOptions,
      FileOpenDisposition openDisposition) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer user,
                            IntPtr filePath,
                            Int32 accessMode,
                            Uint32 sharingOptions,
                            Int32 openDisposition,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer user,
                    int filePath,
                    int accessMode,
                    int sharingOptions,
                    int openDisposition,
                    Pointer<COMObject> operation)>()(
        lpVtbl,
        user.lpVtbl,
        filePath.toHString(),
        accessMode.value,
        sharingOptions.value,
        openDisposition.value,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IRandomAccessStream?>.fromPtr(
        operation,
        creator: IRandomAccessStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageStreamTransaction?> openTransactedWriteForUserAsync(
      User? user, String filePath) {
    final operation = calloc<COMObject>();

    final hr =
        vtable
                .elementAt(12)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer user,
                                IntPtr filePath,
                                Pointer<COMObject> operation)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer user,
                        int filePath, Pointer<COMObject> operation)>()(
            lpVtbl, user.lpVtbl, filePath.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageStreamTransaction?>.fromPtr(
        operation,
        creator: StorageStreamTransaction.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageStreamTransaction?> openTransactedWriteForUserWithOptionsAsync(
      User? user,
      String filePath,
      StorageOpenOptions openOptions,
      FileOpenDisposition openDisposition) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer user,
                            IntPtr filePath,
                            Uint32 openOptions,
                            Int32 openDisposition,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer user,
                    int filePath,
                    int openOptions,
                    int openDisposition,
                    Pointer<COMObject> operation)>()(
        lpVtbl,
        user.lpVtbl,
        filePath.toHString(),
        openOptions.value,
        openDisposition.value,
        operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageStreamTransaction?>.fromPtr(
        operation,
        creator: StorageStreamTransaction.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
