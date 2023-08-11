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

import 'user.dart';
import 'userauthenticationstatus.dart';
import 'usertype.dart';
import 'userwatcher.dart';

/// @nodoc
const IID_IUserStatics = '{155eb23b-242a-45e0-a2e9-3171fc6a7fdd}';

class IUserStatics extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IUserStatics.fromPtr(super.ptr);

  factory IUserStatics.from(IInspectable interface) =>
      interface.cast(IUserStatics.fromPtr, IID_IUserStatics);

  UserWatcher? createWatcher() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return UserWatcher.fromPtr(result);
  }

  Future<List<User?>> findAllAsync() {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
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

    final asyncOperation = IAsyncOperation<IVectorView<User?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: User.fromPtr,
            iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  @Deprecated(
      "FindAllAsyncByType is deprecated and might not function consistently on all platforms. Instead, use FindAllAsync or GetDefault.")
  Future<List<User?>> findAllAsyncByType(UserType type) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 type,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int type,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, type.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<User?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: User.fromPtr,
            iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  @Deprecated(
      "FindAllAsyncByTypeAndStatus is deprecated and might not function consistently on all platforms. Instead, use FindAllAsync or GetDefault.")
  Future<List<User?>> findAllAsyncByTypeAndStatus(
      UserType type, UserAuthenticationStatus status) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 type,
                            Int32 status, Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int type, int status,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, type.value, status.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<User?>>.fromPtr(
        operation,
        creator: (ptr) => IVectorView.fromPtr(ptr,
            creator: User.fromPtr,
            iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}'));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  User? getFromId(String nonRoamableId) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr nonRoamableId,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int nonRoamableId,
                        Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, nonRoamableId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return User.fromPtr(result);
  }
}
