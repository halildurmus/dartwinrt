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

import 'battery.dart';

/// @nodoc
const IID_IBatteryStatics = '{79cd72b6-9e5e-4452-bea6-dfcd541e597f}';

class IBatteryStatics extends IInspectable {
  IBatteryStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBatteryStaticsVtbl>().ref;

  final _IBatteryStaticsVtbl _vtable;

  factory IBatteryStatics.from(IInspectable interface) =>
      interface.cast(IBatteryStatics.fromPtr, IID_IBatteryStatics);

  Battery? get aggregateBattery {
    final result = calloc<COMObject>();

    final hr = _vtable.get_AggregateBattery.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return Battery.fromPtr(result);
  }

  Future<Battery?> fromIdAsync(String deviceId) {
    final result = calloc<COMObject>();

    final hr = _vtable.FromIdAsync.asFunction<
        int Function(VTablePointer lpVtbl, int deviceId,
            Pointer<COMObject> result)>()(lpVtbl, deviceId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<Battery?>.fromPtr(result,
        tResultObjectCreator: Battery.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  String getDeviceSelector() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.GetDeviceSelector.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}

final class _IBatteryStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      get_AggregateBattery;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId,
              Pointer<COMObject> result)>> FromIdAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      GetDeviceSelector;
}
