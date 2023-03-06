// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'deviceinformationcustompairing.dart';
import 'devicepairingkinds.dart';
import 'devicepairingprotectionlevel.dart';
import 'devicepairingresult.dart';
import 'idevicepairingsettings.dart';

/// @nodoc
const IID_IDeviceInformationCustomPairing =
    '{85138c02-4ee6-4914-8370-107a39144c0e}';

/// {@category interface}
class IDeviceInformationCustomPairing extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IDeviceInformationCustomPairing.fromPtr(super.ptr);

  factory IDeviceInformationCustomPairing.from(IInspectable interface) =>
      IDeviceInformationCustomPairing.fromPtr(
          interface.toInterface(IID_IDeviceInformationCustomPairing));

  Future<DevicePairingResult?> pairAsync(
      DevicePairingKinds pairingKindsSupported) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DevicePairingResult?>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 pairingKindsSupported,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int pairingKindsSupported,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, pairingKindsSupported.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(
        retValuePtr,
        creator: DevicePairingResult.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAsync(
      DevicePairingKinds pairingKindsSupported,
      DevicePairingProtectionLevel minProtectionLevel) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DevicePairingResult?>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 pairingKindsSupported,
                            Int32 minProtectionLevel,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int pairingKindsSupported,
                    int minProtectionLevel, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        pairingKindsSupported.value,
        minProtectionLevel.value,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(
        retValuePtr,
        creator: DevicePairingResult.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAndSettingsAsync(
      DevicePairingKinds pairingKindsSupported,
      DevicePairingProtectionLevel minProtectionLevel,
      IDevicePairingSettings? devicePairingSettings) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DevicePairingResult?>();
    final devicePairingSettingsPtr = devicePairingSettings == null
        ? nullptr
        : devicePairingSettings.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            Uint32 pairingKindsSupported,
                            Int32 minProtectionLevel,
                            LPVTBL devicePairingSettings,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int pairingKindsSupported,
                    int minProtectionLevel,
                    LPVTBL devicePairingSettings,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        pairingKindsSupported.value,
        minProtectionLevel.value,
        devicePairingSettingsPtr,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(
        retValuePtr,
        creator: DevicePairingResult.fromPtr);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  int add_PairingRequested(Pointer<COMObject> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, LPVTBL handler,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, LPVTBL handler,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, handler.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_PairingRequested(int token) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr token)>>>()
            .value
            .asFunction<int Function(LPVTBL lpVtbl, int token)>()(
        ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
