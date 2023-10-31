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

import 'connectionprofile.dart';
import 'networkitem.dart';

/// @nodoc
const IID_INetworkAdapter = '{3b542e03-5388-496c-a8a3-affd39aec2e6}';

class INetworkAdapter extends IInspectable {
  INetworkAdapter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INetworkAdapterVtbl>().ref;

  final _INetworkAdapterVtbl _vtable;

  factory INetworkAdapter.from(IInspectable interface) =>
      interface.cast(INetworkAdapter.fromPtr, IID_INetworkAdapter);

  int get outboundMaxBitsPerSecond {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_OutboundMaxBitsPerSecond.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get inboundMaxBitsPerSecond {
    final value = calloc<Uint64>();

    try {
      final hr = _vtable.get_InboundMaxBitsPerSecond.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get ianaInterfaceType {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_IanaInterfaceType.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  NetworkItem? get networkItem {
    final value = calloc<COMObject>();

    final hr = _vtable.get_NetworkItem.asFunction<
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

    return NetworkItem.fromPtr(value);
  }

  Guid get networkAdapterId {
    final value = calloc<GUID>();

    try {
      final hr = _vtable.get_NetworkAdapterId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<GUID> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartGuid();
    } finally {
      free(value);
    }
  }

  Future<ConnectionProfile?> getConnectedProfileAsync() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetConnectedProfileAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ConnectionProfile?>.fromPtr(value,
        tResultObjectCreator: ConnectionProfile.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _INetworkAdapterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_OutboundMaxBitsPerSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint64> value)>>
      get_InboundMaxBitsPerSecond;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_IanaInterfaceType;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_NetworkItem;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<GUID> value)>>
      get_NetworkAdapterId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetConnectedProfileAsync;
}
