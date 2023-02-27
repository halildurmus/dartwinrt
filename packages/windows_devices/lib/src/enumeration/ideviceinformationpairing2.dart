// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'deviceinformationcustompairing.dart';
import 'devicepairingresult.dart';
import 'deviceunpairingresult.dart';
import 'enums.g.dart';
import 'idevicepairingsettings.dart';

/// @nodoc
const IID_IDeviceInformationPairing2 = '{f68612fd-0aee-4328-85cc-1c742bb1790d}';

/// {@category interface}
class IDeviceInformationPairing2 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDeviceInformationPairing2.fromRawPointer(super.ptr);

  factory IDeviceInformationPairing2.from(IInspectable interface) =>
      IDeviceInformationPairing2.fromRawPointer(
          interface.toInterface(IID_IDeviceInformationPairing2));

  DevicePairingProtectionLevel get protectionLevel {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DevicePairingProtectionLevel.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  DeviceInformationCustomPairing? get custom {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceInformationCustomPairing.fromRawPointer(retValuePtr);
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAndSettingsAsync(
      DevicePairingProtectionLevel minProtectionLevel,
      IDevicePairingSettings? devicePairingSettings) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DevicePairingResult?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Int32 minProtectionLevel,
                            LPVTBL devicePairingSettings,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int minProtectionLevel,
                    LPVTBL devicePairingSettings,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        minProtectionLevel.value,
        devicePairingSettings == null
            ? nullptr
            : devicePairingSettings.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromRawPointer(
        retValuePtr,
        creator: DevicePairingResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceUnpairingResult?> unpairAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceUnpairingResult?>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<DeviceUnpairingResult?>.fromRawPointer(retValuePtr,
            creator: DeviceUnpairingResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }
}
