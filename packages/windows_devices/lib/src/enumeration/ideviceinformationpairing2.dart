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

import 'deviceinformationcustompairing.dart';
import 'devicepairingprotectionlevel.dart';
import 'devicepairingresult.dart';
import 'deviceunpairingresult.dart';
import 'idevicepairingsettings.dart';

/// @nodoc
const IID_IDeviceInformationPairing2 = '{f68612fd-0aee-4328-85cc-1c742bb1790d}';

class IDeviceInformationPairing2 extends IInspectable {
  IDeviceInformationPairing2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDeviceInformationPairing2Vtbl>().ref;

  final _IDeviceInformationPairing2Vtbl _vtable;

  factory IDeviceInformationPairing2.from(IInspectable interface) => interface
      .cast(IDeviceInformationPairing2.fromPtr, IID_IDeviceInformationPairing2);

  DevicePairingProtectionLevel get protectionLevel {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ProtectionLevel.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return DevicePairingProtectionLevel.from(value.value);
    } finally {
      free(value);
    }
  }

  DeviceInformationCustomPairing? get custom {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Custom.asFunction<
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

    return DeviceInformationCustomPairing.fromPtr(value);
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAndSettingsAsync(
      DevicePairingProtectionLevel minProtectionLevel,
      IDevicePairingSettings? devicePairingSettings) {
    final result = calloc<COMObject>();

    final hr = _vtable.PairWithProtectionLevelAndSettingsAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int minProtectionLevel,
                VTablePointer devicePairingSettings,
                Pointer<COMObject> result)>()(
        lpVtbl, minProtectionLevel.value, devicePairingSettings.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(result,
        tResultObjectCreator: DevicePairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceUnpairingResult?> unpairAsync() {
    final result = calloc<COMObject>();

    final hr = _vtable.UnpairAsync.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceUnpairingResult?>.fromPtr(
        result,
        tResultObjectCreator: DeviceUnpairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IDeviceInformationPairing2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ProtectionLevel;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Custom;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Int32 minProtectionLevel,
                  VTablePointer devicePairingSettings,
                  Pointer<COMObject> result)>>
      PairWithProtectionLevelAndSettingsAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> UnpairAsync;
}
