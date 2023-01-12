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
import 'package:win32/win32.dart';
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

/// @nodoc
const IID_IGameControllerBatteryInfo = '{dcecc681-3963-4da6-955d-553f3b6f6161}';

/// {@category Interface}
/// {@category winrt}
class IGameControllerBatteryInfo extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IGameControllerBatteryInfo.fromRawPointer(super.ptr);

  factory IGameControllerBatteryInfo.from(IInspectable interface) =>
      IGameControllerBatteryInfo.fromRawPointer(
          interface.toInterface(IID_IGameControllerBatteryInfo));

  BatteryReport? tryGetBatteryReport() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(Pointer, Pointer<COMObject>)>>>()
            .value
            .asFunction<int Function(Pointer, Pointer<COMObject>)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }

    return BatteryReport.fromRawPointer(retValuePtr);
  }
}
