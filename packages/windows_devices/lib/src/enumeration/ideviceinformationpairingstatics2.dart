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

import 'devicepairingkinds.dart';
import 'devicepairingprotectionlevel.dart';

/// @nodoc
const IID_IDeviceInformationPairingStatics2 =
    '{04de5372-b7b7-476b-a74f-c5836a704d98}';

class IDeviceInformationPairingStatics2 extends IInspectable {
  IDeviceInformationPairingStatics2.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IDeviceInformationPairingStatics2Vtbl>().ref;

  final _IDeviceInformationPairingStatics2Vtbl _vtable;

  factory IDeviceInformationPairingStatics2.from(IInspectable interface) =>
      interface.cast(IDeviceInformationPairingStatics2.fromPtr,
          IID_IDeviceInformationPairingStatics2);

  bool tryRegisterForAllInboundPairingRequestsWithProtectionLevel(
      DevicePairingKinds pairingKindsSupported,
      DevicePairingProtectionLevel minProtectionLevel) {
    final result = calloc<Bool>();

    try {
      final hr =
          _vtable.TryRegisterForAllInboundPairingRequestsWithProtectionLevel
                  .asFunction<
                      int Function(
                          VTablePointer lpVtbl,
                          int pairingKindsSupported,
                          int minProtectionLevel,
                          Pointer<Bool> result)>()(lpVtbl,
              pairingKindsSupported.value, minProtectionLevel.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _IDeviceInformationPairingStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Uint32 pairingKindsSupported,
                  Int32 minProtectionLevel,
                  Pointer<Bool> result)>>
      TryRegisterForAllInboundPairingRequestsWithProtectionLevel;
}
