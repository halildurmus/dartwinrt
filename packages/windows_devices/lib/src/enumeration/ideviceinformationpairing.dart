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

import 'devicepairingprotectionlevel.dart';
import 'devicepairingresult.dart';

/// @nodoc
const IID_IDeviceInformationPairing = '{2c4769f5-f684-40d5-8469-e8dbaab70485}';

class IDeviceInformationPairing extends IInspectable {
  IDeviceInformationPairing.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDeviceInformationPairingVtbl>().ref;

  final _IDeviceInformationPairingVtbl _vtable;

  factory IDeviceInformationPairing.from(IInspectable interface) => interface
      .cast(IDeviceInformationPairing.fromPtr, IID_IDeviceInformationPairing);

  bool get isPaired {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsPaired.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get canPair {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_CanPair.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<DevicePairingResult?> pairAsync() {
    final result = calloc<COMObject>();

    final hr = _vtable.PairAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(result,
        tResultObjectCreator: DevicePairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAsync(
      DevicePairingProtectionLevel minProtectionLevel) {
    final result = calloc<COMObject>();

    final hr = _vtable.PairWithProtectionLevelAsync.asFunction<
            int Function(VTablePointer lpVtbl, int minProtectionLevel,
                Pointer<COMObject> result)>()(
        lpVtbl, minProtectionLevel.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(result,
        tResultObjectCreator: DevicePairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IDeviceInformationPairingVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsPaired;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_CanPair;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> PairAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 minProtectionLevel,
              Pointer<COMObject> result)>> PairWithProtectionLevelAsync;
}
