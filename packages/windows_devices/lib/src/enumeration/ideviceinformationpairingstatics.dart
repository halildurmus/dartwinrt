// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

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

/// @nodoc
const IID_IDeviceInformationPairingStatics =
    '{e915c408-36d4-49a1-bf13-514173799b6b}';

class IDeviceInformationPairingStatics extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDeviceInformationPairingStatics.fromPtr(super.ptr);

  factory IDeviceInformationPairingStatics.from(IInspectable interface) =>
      IDeviceInformationPairingStatics.fromPtr(
          interface.toInterface(IID_IDeviceInformationPairingStatics));

  bool tryRegisterForAllInboundPairingRequests(
      DevicePairingKinds pairingKindsSupported) {
    final result = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              Uint32 pairingKindsSupported,
                              Pointer<Bool> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int pairingKindsSupported,
                      Pointer<Bool> result)>()(
          ptr.ref.lpVtbl, pairingKindsSupported.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
