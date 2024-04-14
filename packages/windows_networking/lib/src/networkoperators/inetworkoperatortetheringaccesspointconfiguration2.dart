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

import 'tetheringwifiband.dart';

/// @nodoc
const IID_INetworkOperatorTetheringAccessPointConfiguration2 =
    '{b1809142-7238-59a0-928b-74ab46fd64b6}';

class INetworkOperatorTetheringAccessPointConfiguration2 extends IInspectable {
  INetworkOperatorTetheringAccessPointConfiguration2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_INetworkOperatorTetheringAccessPointConfiguration2Vtbl>()
            .ref;

  final _INetworkOperatorTetheringAccessPointConfiguration2Vtbl _vtable;

  factory INetworkOperatorTetheringAccessPointConfiguration2.from(
          IInspectable interface) =>
      interface.cast(INetworkOperatorTetheringAccessPointConfiguration2.fromPtr,
          IID_INetworkOperatorTetheringAccessPointConfiguration2);

  bool isBandSupported(TetheringWiFiBand band) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsBandSupported.asFunction<
          int Function(VTablePointer lpVtbl, int band,
              Pointer<Bool> result)>()(lpVtbl, band.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  Future<bool> isBandSupportedAsync(TetheringWiFiBand band) {
    final operation = calloc<COMObject>();

    final hr = _vtable.IsBandSupportedAsync.asFunction<
        int Function(VTablePointer lpVtbl, int band,
            Pointer<COMObject> operation)>()(lpVtbl, band.value, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<bool>.fromPtr(operation);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  TetheringWiFiBand get band {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Band.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TetheringWiFiBand.from(value.value);
    } finally {
      free(value);
    }
  }

  set band(TetheringWiFiBand value) {
    final hr = _vtable.put_Band
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _INetworkOperatorTetheringAccessPointConfiguration2Vtbl
    extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 band, Pointer<Bool> result)>>
      IsBandSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 band,
              Pointer<COMObject> operation)>> IsBandSupportedAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Band;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Band;
}
