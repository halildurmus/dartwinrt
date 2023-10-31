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

import 'displaymonitor.dart';

/// @nodoc
const IID_IDisplayMonitorStatics = '{6eae698f-a228-4c05-821d-b695d667de8e}';

class IDisplayMonitorStatics extends IInspectable {
  IDisplayMonitorStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDisplayMonitorStaticsVtbl>().ref;

  final _IDisplayMonitorStaticsVtbl _vtable;

  factory IDisplayMonitorStatics.from(IInspectable interface) => interface.cast(
      IDisplayMonitorStatics.fromPtr, IID_IDisplayMonitorStatics);

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

  Future<DisplayMonitor?> fromIdAsync(String deviceId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FromIdAsync.asFunction<
            int Function(VTablePointer lpVtbl, int deviceId,
                Pointer<COMObject> operation)>()(
        lpVtbl, deviceId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DisplayMonitor?>.fromPtr(operation,
        tResultObjectCreator: DisplayMonitor.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DisplayMonitor?> fromInterfaceIdAsync(String deviceInterfaceId) {
    final operation = calloc<COMObject>();

    final hr = _vtable.FromInterfaceIdAsync.asFunction<
            int Function(VTablePointer lpVtbl, int deviceInterfaceId,
                Pointer<COMObject> operation)>()(
        lpVtbl, deviceInterfaceId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DisplayMonitor?>.fromPtr(operation,
        tResultObjectCreator: DisplayMonitor.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IDisplayMonitorStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      GetDeviceSelector;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId,
              Pointer<COMObject> operation)>> FromIdAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr deviceInterfaceId,
              Pointer<COMObject> operation)>> FromInterfaceIdAsync;
}
