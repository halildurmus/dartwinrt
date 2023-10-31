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
import 'package:windows_storage/windows_storage.dart';

import 'userauthenticationstatus.dart';
import 'userpicturesize.dart';
import 'usertype.dart';

/// @nodoc
const IID_IUser = '{df9a26c6-e746-4bcd-b5d4-120103c4209b}';

class IUser extends IInspectable {
  IUser.fromPtr(super.ptr) : _vtable = ptr.ref.vtable.cast<_IUserVtbl>().ref;

  final _IUserVtbl _vtable;

  factory IUser.from(IInspectable interface) =>
      interface.cast(IUser.fromPtr, IID_IUser);

  String get nonRoamableId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_NonRoamableId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  UserAuthenticationStatus get authenticationStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_AuthenticationStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UserAuthenticationStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  UserType get type {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Type.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return UserType.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<Object?> getPropertyAsync(String value) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetPropertyAsync.asFunction<
            int Function(VTablePointer lpVtbl, int value,
                Pointer<COMObject> operation)>()(
        lpVtbl, value.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<Object?>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IPropertySet> getPropertiesAsync(IVectorView<String>? values) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetPropertiesAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer values,
            Pointer<COMObject> operation)>()(lpVtbl, values.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IPropertySet>.fromPtr(operation,
        tResultObjectCreator: IPropertySet.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<IRandomAccessStreamReference?> getPictureAsync(
      UserPictureSize desiredSize) {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetPictureAsync.asFunction<
            int Function(VTablePointer lpVtbl, int desiredSize,
                Pointer<COMObject> operation)>()(
        lpVtbl, desiredSize.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<IRandomAccessStreamReference?>.fromPtr(operation,
            tResultObjectCreator: IRandomAccessStreamReference.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IUserVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_NonRoamableId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_AuthenticationStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Type;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr value,
              Pointer<COMObject> operation)>> GetPropertyAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer values,
              Pointer<COMObject> operation)>> GetPropertiesAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 desiredSize,
              Pointer<COMObject> operation)>> GetPictureAsync;
}
