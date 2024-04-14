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

/// @nodoc
const IID_INetworkOperatorTetheringManagerStatics4 =
    '{b3b9f9d0-ebff-46a4-a847-d663d8b0977e}';

class INetworkOperatorTetheringManagerStatics4 extends IInspectable {
  INetworkOperatorTetheringManagerStatics4.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringManagerStatics4Vtbl>()
            .ref;

  final _INetworkOperatorTetheringManagerStatics4Vtbl _vtable;

  factory INetworkOperatorTetheringManagerStatics4.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringManagerStatics4.fromPtr,
          IID_INetworkOperatorTetheringManagerStatics4);

  bool isNoConnectionsTimeoutEnabled() {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsNoConnectionsTimeoutEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  void enableNoConnectionsTimeout() {
    final hr = _vtable.EnableNoConnectionsTimeout.asFunction<
        int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<void> enableNoConnectionsTimeoutAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.EnableNoConnectionsTimeoutAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }

  void disableNoConnectionsTimeout() {
    final hr = _vtable.DisableNoConnectionsTimeout.asFunction<
        int Function(VTablePointer lpVtbl)>()(lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Future<void> disableNoConnectionsTimeoutAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.DisableNoConnectionsTimeoutAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _INetworkOperatorTetheringManagerStatics4Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> result)>>
      IsNoConnectionsTimeoutEnabled;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      EnableNoConnectionsTimeout;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      EnableNoConnectionsTimeoutAsync;
  external Pointer<NativeFunction<HRESULT Function(VTablePointer lpVtbl)>>
      DisableNoConnectionsTimeout;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      DisableNoConnectionsTimeoutAsync;
}
