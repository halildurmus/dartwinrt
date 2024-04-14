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

import 'creationcollisionoption.dart';
import 'storagefile.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IDownloadsFolderStatics = '{27862ed0-404e-47df-a1e2-e37308be7b37}';

class IDownloadsFolderStatics extends IInspectable {
  IDownloadsFolderStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDownloadsFolderStaticsVtbl>().ref;

  final _IDownloadsFolderStaticsVtbl _vtable;

  factory IDownloadsFolderStatics.from(IInspectable interface) => interface
      .cast(IDownloadsFolderStatics.fromPtr, IID_IDownloadsFolderStatics);

  Future<StorageFile?> createFileAsync(String desiredName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFileAsync.asFunction<
            int Function(VTablePointer lpVtbl, int desiredName,
                Pointer<COMObject> operation)>()(
        lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        tResultObjectCreator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderAsync(String desiredName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFolderAsync.asFunction<
            int Function(VTablePointer lpVtbl, int desiredName,
                Pointer<COMObject> operation)>()(
        lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createFileWithCollisionOptionAsync(
      String desiredName, CreationCollisionOption option) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFileWithCollisionOptionAsync.asFunction<
            int Function(VTablePointer lpVtbl, int desiredName, int option,
                Pointer<COMObject> operation)>()(
        lpVtbl, desiredName.toHString(), option.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        tResultObjectCreator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderWithCollisionOptionAsync(
      String desiredName, CreationCollisionOption option) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFolderWithCollisionOptionAsync.asFunction<
            int Function(VTablePointer lpVtbl, int desiredName, int option,
                Pointer<COMObject> operation)>()(
        lpVtbl, desiredName.toHString(), option.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IDownloadsFolderStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr desiredName,
              Pointer<COMObject> operation)>> CreateFileAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr desiredName,
              Pointer<COMObject> operation)>> CreateFolderAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr desiredName,
                  Int32 option, Pointer<COMObject> operation)>>
      CreateFileWithCollisionOptionAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, IntPtr desiredName,
                  Int32 option, Pointer<COMObject> operation)>>
      CreateFolderWithCollisionOptionAsync;
}
