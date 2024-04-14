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

import 'applicationdata.dart';
import 'applicationdatacontainer.dart';
import 'applicationdatalocality.dart';
import 'storagefolder.dart';

/// @nodoc
const IID_IApplicationData = '{c3da6fb7-b744-4b45-b0b8-223a0938d0dc}';

class IApplicationData extends IInspectable {
  IApplicationData.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IApplicationDataVtbl>().ref;

  final _IApplicationDataVtbl _vtable;

  factory IApplicationData.from(IInspectable interface) =>
      interface.cast(IApplicationData.fromPtr, IID_IApplicationData);

  int get version {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Version.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<void> setVersionAsync(int desiredVersion, Pointer<COMObject> handler) {
    final setVersionOperation = calloc<COMObject>();

    final hr = _vtable.SetVersionAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int desiredVersion,
                VTablePointer handler,
                Pointer<COMObject> setVersionOperation)>()(
        lpVtbl, desiredVersion, handler.ref.lpVtbl, setVersionOperation);

    if (FAILED(hr)) {
      free(setVersionOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(setVersionOperation).toFuture();
  }

  Future<void> clearAllAsync() {
    final clearOperation = calloc<COMObject>();

    final hr = _vtable.ClearAllAsync.asFunction<
        int Function(VTablePointer lpVtbl,
            Pointer<COMObject> clearOperation)>()(lpVtbl, clearOperation);

    if (FAILED(hr)) {
      free(clearOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(clearOperation).toFuture();
  }

  Future<void> clearAsync(ApplicationDataLocality locality) {
    final clearOperation = calloc<COMObject>();

    final hr = _vtable.ClearAsync.asFunction<
            int Function(VTablePointer lpVtbl, int locality,
                Pointer<COMObject> clearOperation)>()(
        lpVtbl, locality.value, clearOperation);

    if (FAILED(hr)) {
      free(clearOperation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(clearOperation).toFuture();
  }

  ApplicationDataContainer? get localSettings {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LocalSettings.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ApplicationDataContainer.fromPtr(value);
  }

  ApplicationDataContainer? get roamingSettings {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RoamingSettings.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return ApplicationDataContainer.fromPtr(value);
  }

  StorageFolder? get localFolder {
    final value = calloc<COMObject>();

    final hr = _vtable.get_LocalFolder.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get roamingFolder {
    final value = calloc<COMObject>();

    final hr = _vtable.get_RoamingFolder.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolder.fromPtr(value);
  }

  StorageFolder? get temporaryFolder {
    final value = calloc<COMObject>();

    final hr = _vtable.get_TemporaryFolder.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return StorageFolder.fromPtr(value);
  }

  int add_DataChanged(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = _vtable.add_DataChanged.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_DataChanged(int token) {
    final hr = _vtable.remove_DataChanged
            .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
        lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void signalDataChanged() {
    final hr = _vtable.SignalDataChanged.asFunction<
        int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get roamingStorageQuota {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_RoamingStorageQuota.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IApplicationDataVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Version;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 desiredVersion,
              VTablePointer handler,
              Pointer<COMObject> setVersionOperation)>> SetVersionAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> clearOperation)>>
      ClearAllAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 locality,
              Pointer<COMObject> clearOperation)>> ClearAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LocalSettings;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RoamingSettings;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_LocalFolder;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_RoamingFolder;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_TemporaryFolder;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer handler,
              Pointer<IntPtr> token)>> add_DataChanged;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, IntPtr token)>>
      remove_DataChanged;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      SignalDataChanged;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_RoamingStorageQuota;
}
