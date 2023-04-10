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

import 'devicepairingkinds.dart';
import 'devicepairingprotectionlevel.dart';

/// @nodoc
const IID_IDeviceInformationPairingStatics2 =
    '{04de5372-b7b7-476b-a74f-c5836a704d98}';

/// {@category interface}
class IDeviceInformationPairingStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDeviceInformationPairingStatics2.fromPtr(super.ptr);

  factory IDeviceInformationPairingStatics2.from(IInspectable interface) =>
      IDeviceInformationPairingStatics2.fromPtr(
          interface.toInterface(IID_IDeviceInformationPairingStatics2));

  bool tryRegisterForAllInboundPairingRequestsWithProtectionLevel(
      DevicePairingKinds pairingKindsSupported,
      DevicePairingProtectionLevel minProtectionLevel) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 pairingKindsSupported,
                              Int32 minProtectionLevel,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int pairingKindsSupported,
                      int minProtectionLevel, Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl,
          pairingKindsSupported.value,
          minProtectionLevel.value,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }
}
