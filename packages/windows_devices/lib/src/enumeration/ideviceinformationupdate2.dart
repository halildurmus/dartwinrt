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

import 'deviceinformationkind.dart';

/// @nodoc
const IID_IDeviceInformationUpdate2 = '{5d9d148c-a873-485e-baa6-aa620788e3cc}';

/// {@category interface}
class IDeviceInformationUpdate2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDeviceInformationUpdate2.fromRawPointer(super.ptr);

  factory IDeviceInformationUpdate2.from(IInspectable interface) =>
      IDeviceInformationUpdate2.fromRawPointer(
          interface.toInterface(IID_IDeviceInformationUpdate2));

  DeviceInformationKind get kind {
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

      return DeviceInformationKind.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
