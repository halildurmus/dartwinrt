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
import 'package:windows_system/windows_system.dart';

import 'creationcollisionoption.dart';
import 'storagefile.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IDownloadsFolderStatics2 = '{e93045bd-8ef8-4f8e-8d15-ac0e265f390d}';

class IDownloadsFolderStatics2 extends IInspectable {
  IDownloadsFolderStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDownloadsFolderStatics2Vtbl>().ref;

  final _IDownloadsFolderStatics2Vtbl _vtable;

  factory IDownloadsFolderStatics2.from(IInspectable interface) => interface
      .cast(IDownloadsFolderStatics2.fromPtr, IID_IDownloadsFolderStatics2);

  Future<StorageFile?> createFileForUserAsync(User? user, String desiredName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFileForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                int desiredName, Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        tResultObjectCreator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderForUserAsync(
      User? user, String desiredName) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFolderForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                int desiredName, Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, desiredName.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFile?> createFileForUserWithCollisionOptionAsync(
      User? user, String desiredName, CreationCollisionOption option) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFileForUserWithCollisionOptionAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                int desiredName, int option, Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, desiredName.toHString(), option.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFile?>.fromPtr(operation,
        tResultObjectCreator: StorageFile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> createFolderForUserWithCollisionOptionAsync(
      User? user, String desiredName, CreationCollisionOption option) {
    final operation = calloc<COMObject>();

    final hr = _vtable.CreateFolderForUserWithCollisionOptionAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user,
                int desiredName, int option, Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, desiredName.toHString(), option.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IDownloadsFolderStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              IntPtr desiredName,
              Pointer<COMObject> operation)>> CreateFileForUserAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              IntPtr desiredName,
              Pointer<COMObject> operation)>> CreateFolderForUserAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer user,
                  IntPtr desiredName,
                  Int32 option,
                  Pointer<COMObject> operation)>>
      CreateFileForUserWithCollisionOptionAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer user,
                  IntPtr desiredName,
                  Int32 option,
                  Pointer<COMObject> operation)>>
      CreateFolderForUserWithCollisionOptionAsync;
}
