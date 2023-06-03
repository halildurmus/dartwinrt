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

import 'displaymonitor.dart';

/// @nodoc
const IID_IDisplayMonitorStatics = '{6eae698f-a228-4c05-821d-b695d667de8e}';

class IDisplayMonitorStatics extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IDisplayMonitorStatics.fromPtr(super.ptr);

  factory IDisplayMonitorStatics.from(IInspectable interface) =>
      IDisplayMonitorStatics.fromPtr(
          interface.toInterface(IID_IDisplayMonitorStatics));

  String getDeviceSelector() {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl,
                          Pointer<IntPtr> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<IntPtr> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  Future<DisplayMonitor?> fromIdAsync(String deviceId) {
    final retValuePtr = calloc<COMObject>();
    final deviceIdHString = deviceId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceIdHString, retValuePtr);

    WindowsDeleteString(deviceIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DisplayMonitor?>.fromPtr(retValuePtr,
        creator: DisplayMonitor.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DisplayMonitor?> fromInterfaceIdAsync(String deviceInterfaceId) {
    final retValuePtr = calloc<COMObject>();
    final deviceInterfaceIdHString = deviceInterfaceId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr deviceInterfaceId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceInterfaceId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceInterfaceIdHString, retValuePtr);

    WindowsDeleteString(deviceInterfaceIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DisplayMonitor?>.fromPtr(retValuePtr,
        creator: DisplayMonitor.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
