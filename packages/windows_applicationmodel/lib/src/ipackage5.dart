// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'packagecontentgroup.dart';

/// @nodoc
const IID_IPackage5 = '{0e842dd4-d9ac-45ed-9a1e-74ce056b2635}';

/// {@category interface}
class IPackage5 extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IPackage5.fromPtr(super.ptr);

  factory IPackage5.from(IInspectable interface) =>
      IPackage5.fromPtr(interface.toInterface(IID_IPackage5));

  Future<IVector<PackageContentGroup>> getContentGroupsAsync() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
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

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup>>.fromPtr(retValuePtr,
            creator: (ptr) => IVector.fromPtr(ptr,
                creator: PackageContentGroup.fromPtr,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<PackageContentGroup?> getContentGroupAsync(String name) {
    final retValuePtr = calloc<COMObject>();
    final nameHString = name.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr name,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int name,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, nameHString, retValuePtr);

    WindowsDeleteString(nameHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PackageContentGroup?>.fromPtr(
        retValuePtr,
        creator: PackageContentGroup.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<PackageContentGroup>> stageContentGroupsAsync(
      IIterable<String>? names) {
    final retValuePtr = calloc<COMObject>();
    final namesPtr = names == null
        ? nullptr
        : IInspectable(
                names.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer names,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer names,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, namesPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup>>.fromPtr(retValuePtr,
            creator: (ptr) => IVector.fromPtr(ptr,
                creator: PackageContentGroup.fromPtr,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IVector<PackageContentGroup>> stageContentGroupsWithPriorityAsync(
      IIterable<String>? names, bool moveToHeadOfQueue) {
    final retValuePtr = calloc<COMObject>();
    final namesPtr = names == null
        ? nullptr
        : IInspectable(
                names.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer names,
                            Bool moveToHeadOfQueue,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer names,
                    bool moveToHeadOfQueue, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, namesPtr, moveToHeadOfQueue, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IVector<PackageContentGroup>>.fromPtr(retValuePtr,
            creator: (ptr) => IVector.fromPtr(ptr,
                creator: PackageContentGroup.fromPtr,
                iterableIid: '{d7dd1456-4805-5768-a25d-99641b096491}'));
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<bool> setInUseAsync(bool inUse) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Bool inUse,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, bool inUse,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, inUse, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(retValuePtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
