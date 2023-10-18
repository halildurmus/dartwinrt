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

import 'packagecontentgroup.dart';

/// @nodoc
const IID_IPackage5 = '{0e842dd4-d9ac-45ed-9a1e-74ce056b2635}';

class IPackage5 extends IInspectable {
  IPackage5.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPackage5Vtbl>().ref;

  final _IPackage5Vtbl _vtable;

  factory IPackage5.from(IInspectable interface) =>
      interface.cast(IPackage5.fromPtr, IID_IPackage5);

  Future<IVector<PackageContentGroup?>> getContentGroupsAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetContentGroupsAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup?>>.fromPtr(operation,
            creator: (ptr) => IVector.fromPtr(ptr,
                creator: PackageContentGroup.fromPtr,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<PackageContentGroup?> getContentGroupAsync(String name) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetContentGroupAsync.asFunction<
            int Function(VTablePointer lpVtbl, int name,
                Pointer<COMObject> operation)>()(
        lpVtbl, name.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PackageContentGroup?>.fromPtr(
        operation,
        creator: PackageContentGroup.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<PackageContentGroup?>> stageContentGroupsAsync(
      IIterable<String>? names) {
    final operation = calloc<COMObject>();

    final hr = _vtable.StageContentGroupsAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer names,
            Pointer<COMObject> operation)>()(lpVtbl, names.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup?>>.fromPtr(operation,
            creator: (ptr) => IVector.fromPtr(ptr,
                creator: PackageContentGroup.fromPtr,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<PackageContentGroup?>> stageContentGroupsWithPriorityAsync(
      IIterable<String>? names, bool moveToHeadOfQueue) {
    final operation = calloc<COMObject>();

    final hr = _vtable.StageContentGroupsWithPriorityAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer names,
                bool moveToHeadOfQueue, Pointer<COMObject> operation)>()(
        lpVtbl, names.lpVtbl, moveToHeadOfQueue, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup?>>.fromPtr(operation,
            creator: (ptr) => IVector.fromPtr(ptr,
                creator: PackageContentGroup.fromPtr,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> setInUseAsync(bool inUse) {
    final operation = calloc<COMObject>();

    final hr = _vtable.SetInUseAsync.asFunction<
        int Function(VTablePointer lpVtbl, bool inUse,
            Pointer<COMObject> operation)>()(lpVtbl, inUse, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IPackage5Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetContentGroupsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr name,
              Pointer<COMObject> operation)>> GetContentGroupAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer names,
              Pointer<COMObject> operation)>> StageContentGroupsAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer names,
                  Bool moveToHeadOfQueue, Pointer<COMObject> operation)>>
      StageContentGroupsWithPriorityAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Bool inUse,
              Pointer<COMObject> operation)>> SetInUseAsync;
}
