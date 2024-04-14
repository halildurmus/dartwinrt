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

import 'knownfolderid.dart';
import 'knownfoldersaccessstatus.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IKnownFoldersStatics4 = '{1722e6bf-9ff9-4b21-bed5-90ecb13a192e}';

class IKnownFoldersStatics4 extends IInspectable {
  IKnownFoldersStatics4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IKnownFoldersStatics4Vtbl>().ref;

  final _IKnownFoldersStatics4Vtbl _vtable;

  factory IKnownFoldersStatics4.from(IInspectable interface) =>
      interface.cast(IKnownFoldersStatics4.fromPtr, IID_IKnownFoldersStatics4);

  Future<KnownFoldersAccessStatus> requestAccessAsync(KnownFolderId folderId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.RequestAccessAsync.asFunction<
        int Function(VTablePointer lpVtbl, int folderId,
            Pointer<COMObject> operation)>()(lpVtbl, folderId.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<KnownFoldersAccessStatus>.fromPtr(
        operation,
        tResultEnumCreator: KnownFoldersAccessStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<KnownFoldersAccessStatus> requestAccessForUserAsync(
      User? user, KnownFolderId folderId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.RequestAccessForUserAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer user, int folderId,
                Pointer<COMObject> operation)>()(
        lpVtbl, user.lpVtbl, folderId.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<KnownFoldersAccessStatus>.fromPtr(
        operation,
        tResultEnumCreator: KnownFoldersAccessStatus.from);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<StorageFolder?> getFolderAsync(KnownFolderId folderId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetFolderAsync.asFunction<
        int Function(VTablePointer lpVtbl, int folderId,
            Pointer<COMObject> operation)>()(lpVtbl, folderId.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<StorageFolder?>.fromPtr(operation,
        tResultObjectCreator: StorageFolder.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IKnownFoldersStatics4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 folderId,
              Pointer<COMObject> operation)>> RequestAccessAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer user,
              Int32 folderId,
              Pointer<COMObject> operation)>> RequestAccessForUserAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 folderId,
              Pointer<COMObject> operation)>> GetFolderAsync;
}
