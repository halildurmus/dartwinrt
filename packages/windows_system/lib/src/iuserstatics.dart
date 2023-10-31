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
  IUserStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IUserStaticsVtbl>().ref;

  final _IUserStaticsVtbl _vtable;

  factory IUserStatics.from(IInspectable interface) =>
      interface.cast(IUserStatics.fromPtr, IID_IUserStatics);

  UserWatcher? createWatcher() {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateWatcher.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

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

    final hr = _vtable.FindAllAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<User?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}',
            tObjectCreator: User.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  @Deprecated(
      "FindAllAsyncByType is deprecated and might not function consistently on all platforms. Instead, use FindAllAsync or GetDefault.")
  Future<List<User?>> findAllAsyncByType(UserType type) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindAllAsyncByType.asFunction<
        int Function(VTablePointer lpVtbl, int type,
            Pointer<COMObject> operation)>()(lpVtbl, type.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<User?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}',
            tObjectCreator: User.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  @Deprecated(
      "FindAllAsyncByTypeAndStatus is deprecated and might not function consistently on all platforms. Instead, use FindAllAsync or GetDefault.")
  Future<List<User?>> findAllAsyncByTypeAndStatus(
      UserType type, UserAuthenticationStatus status) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FindAllAsyncByTypeAndStatus.asFunction<
            int Function(VTablePointer lpVtbl, int type, int status,
                Pointer<COMObject> operation)>()(
        lpVtbl, type.value, status.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IVectorView<User?>>.fromPtr(
        operation,
        tResultObjectCreator: (ptr) => IVectorView.fromPtr(ptr,
            iterableIid: '{d1bacd1f-0376-5823-8c29-1d45b9f4c191}',
            tObjectCreator: User.fromPtr));
    return asyncOperation.toFuture(() => asyncOperation.getResults().toList());
  }

  User? getFromId(String nonRoamableId) {
    final result = calloc<COMObject>();

    final hr = _vtable.GetFromId.asFunction<
            int Function(VTablePointer lpVtbl, int nonRoamableId,
                Pointer<COMObject> result)>()(
        lpVtbl, nonRoamableId.toHString(), result);

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

final class _IUserStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> CreateWatcher;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      FindAllAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 type,
              Pointer<COMObject> operation)>> FindAllAsyncByType;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 type, Int32 status,
              Pointer<COMObject> operation)>> FindAllAsyncByTypeAndStatus;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr nonRoamableId,
              Pointer<COMObject> result)>> GetFromId;
}
