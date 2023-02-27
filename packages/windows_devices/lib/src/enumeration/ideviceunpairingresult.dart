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

import 'enums.g.dart';

/// @nodoc
const IID_IDeviceUnpairingResult = '{66f44ad3-79d9-444b-92cf-a92ef72571c7}';

/// {@category interface}
class IDeviceUnpairingResult extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDeviceUnpairingResult.fromRawPointer(super.ptr);

  factory IDeviceUnpairingResult.from(IInspectable interface) =>
      IDeviceUnpairingResult.fromRawPointer(
          interface.toInterface(IID_IDeviceUnpairingResult));

  DeviceUnpairingResultStatus get status {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return DeviceUnpairingResultStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
