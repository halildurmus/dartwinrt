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

import 'deviceunpairingresultstatus.dart';

/// @nodoc
const IID_IDeviceUnpairingResult = '{66f44ad3-79d9-444b-92cf-a92ef72571c7}';

class IDeviceUnpairingResult extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IDeviceUnpairingResult.fromPtr(super.ptr);

  factory IDeviceUnpairingResult.from(IInspectable interface) =>
      IDeviceUnpairingResult.fromPtr(
          interface.toInterface(IID_IDeviceUnpairingResult));

  DeviceUnpairingResultStatus get status {
    final status = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> status)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> status)>()(
          ptr.ref.lpVtbl, status);

      if (FAILED(hr)) throwWindowsException(hr);

      return DeviceUnpairingResultStatus.from(status.value);
    } finally {
      free(status);
    }
  }
}
