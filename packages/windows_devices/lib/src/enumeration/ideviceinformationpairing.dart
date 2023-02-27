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

import 'devicepairingresult.dart';
import 'enums.g.dart';

/// @nodoc
const IID_IDeviceInformationPairing = '{2c4769f5-f684-40d5-8469-e8dbaab70485}';

/// {@category interface}
class IDeviceInformationPairing extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDeviceInformationPairing.fromRawPointer(super.ptr);

  factory IDeviceInformationPairing.from(IInspectable interface) =>
      IDeviceInformationPairing.fromRawPointer(
          interface.toInterface(IID_IDeviceInformationPairing));

  bool get isPaired {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  bool get canPair {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  Future<DevicePairingResult?> pairAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DevicePairingResult?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
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

    final asyncOperation = IAsyncOperation<DevicePairingResult?>.fromRawPointer(
        retValuePtr,
        creator: DevicePairingResult.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DevicePairingResult?> pairWithProtectionLevelAsync(
      DevicePairingProtectionLevel minProtectionLevel) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DevicePairingResult?>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                LPVTBL lpVtbl,
                                Int32 minProtectionLevel,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(LPVTBL lpVtbl, int minProtectionLevel,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, minProtectionLevel.value, retValuePtr);

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
}
