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
  // vtable begins at 6, is 3 entries long.
  IDisplayMonitorStatics.fromPtr(super.ptr);

  factory IDisplayMonitorStatics.from(IInspectable interface) => interface.cast(
      IDisplayMonitorStatics.fromPtr, IID_IDisplayMonitorStatics);

  String getDeviceSelector() {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  Future<DisplayMonitor?> fromIdAsync(String deviceId) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceId,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, deviceId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DisplayMonitor?>.fromPtr(operation,
        creator: DisplayMonitor.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DisplayMonitor?> fromInterfaceIdAsync(String deviceInterfaceId) {
    final operation = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr deviceInterfaceId,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceInterfaceId,
                    Pointer<COMObject> operation)>()(
        ptr.ref.lpVtbl, deviceInterfaceId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DisplayMonitor?>.fromPtr(operation,
        creator: DisplayMonitor.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
