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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IGameControllerBatteryInfo = '{dcecc681-3963-4da6-955d-553f3b6f6161}';

class IGameControllerBatteryInfo extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGameControllerBatteryInfo.fromPtr(super.ptr);

  factory IGameControllerBatteryInfo.from(IInspectable interface) =>
      IGameControllerBatteryInfo.fromPtr(
          interface.toInterface(IID_IGameControllerBatteryInfo));

  BatteryReport? tryGetBatteryReport() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return BatteryReport.fromPtr(value);
  }
}
