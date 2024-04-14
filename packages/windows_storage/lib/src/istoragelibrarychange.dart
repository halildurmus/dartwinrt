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

import 'istorageitem.dart';
import 'storageitemtypes.dart';
import 'storagelibrarychangetype.dart';

/// @nodoc
const IID_IStorageLibraryChange = '{00980b23-2be2-4909-aa48-159f5203a51e}';

class IStorageLibraryChange extends IInspectable {
  IStorageLibraryChange.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IStorageLibraryChangeVtbl>().ref;

  final _IStorageLibraryChangeVtbl _vtable;

  factory IStorageLibraryChange.from(IInspectable interface) =>
      interface.cast(IStorageLibraryChange.fromPtr, IID_IStorageLibraryChange);

  StorageLibraryChangeType get changeType {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ChangeType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return StorageLibraryChangeType.from(value.value);
    } finally {
      free(value);
    }
  }

  String get path {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Path.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get previousPath {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_PreviousPath.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  bool isOfType(StorageItemTypes type) {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.IsOfType.asFunction<
          int Function(VTablePointer lpVtbl, int type,
              Pointer<Bool> value)>()(lpVtbl, type.value, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<IStorageItem?> getStorageItemAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.GetStorageItemAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<IStorageItem?>.fromPtr(operation,
        tResultObjectCreator: IStorageItem.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IStorageLibraryChangeVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ChangeType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Path;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_PreviousPath;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 type, Pointer<Bool> value)>>
      IsOfType;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      GetStorageItemAsync;
}
