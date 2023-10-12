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
import 'devicepairingkinds.dart';
import 'devicepairingprotectionlevel.dart';
import 'devicepairingresult.dart';
import 'idevicepairingsettings.dart';

/// @nodoc
const IID_IDeviceInformationCustomPairing =
    '{85138c02-4ee6-4914-8370-107a39144c0e}';

class IDeviceInformationCustomPairing extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IDeviceInformationCustomPairing.fromPtr(super.ptr);

  factory IDeviceInformationCustomPairing.from(IInspectable interface) =>
      interface.cast(IDeviceInformationCustomPairing.fromPtr,
          IID_IDeviceInformationCustomPairing);

  Future<DevicePairingResult?> pairAsync(
      DevicePairingKinds pairingKindsSupported) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 pairingKindsSupported,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int pairingKindsSupported,
                    Pointer<COMObject> result)>()(
        lpVtbl, pairingKindsSupported.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(result,
        creator: DevicePairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAsync(
      DevicePairingKinds pairingKindsSupported,
      DevicePairingProtectionLevel minProtectionLevel) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 pairingKindsSupported,
                            Int32 minProtectionLevel,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int pairingKindsSupported,
                    int minProtectionLevel, Pointer<COMObject> result)>()(
        lpVtbl, pairingKindsSupported.value, minProtectionLevel.value, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(result,
        creator: DevicePairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAndSettingsAsync(
      DevicePairingKinds pairingKindsSupported,
      DevicePairingProtectionLevel minProtectionLevel,
      IDevicePairingSettings? devicePairingSettings) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 pairingKindsSupported,
                            Int32 minProtectionLevel,
                            VTablePointer devicePairingSettings,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int pairingKindsSupported,
                    int minProtectionLevel,
                    VTablePointer devicePairingSettings,
                    Pointer<COMObject> result)>()(
        lpVtbl,
        pairingKindsSupported.value,
        minProtectionLevel.value,
        devicePairingSettings.lpVtbl,
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromPtr(result,
        creator: DevicePairingResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  int add_PairingRequested(Pointer<COMObject> handler) {
    final token = calloc<IntPtr>();

    try {
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          VTablePointer handler, Pointer<IntPtr> token)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer handler,
                  Pointer<IntPtr> token)>()(lpVtbl, handler.ref.lpVtbl, token);

      if (FAILED(hr)) throwWindowsException(hr);

      return token.value;
    } finally {
      free(token);
    }
  }

  void remove_PairingRequested(int token) {
    final hr =
        vtable
                .elementAt(10)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, IntPtr token)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, int token)>()(
            lpVtbl, token);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
