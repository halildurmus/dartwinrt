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

import 'deviceclass.dart';
import 'deviceinformation.dart';
import 'deviceinformationcollection.dart';
import 'deviceinformationkind.dart';
import 'devicewatcher.dart';

/// @nodoc
const IID_IDeviceInformationStatics2 = '{493b4f34-a84f-45fd-9167-15d1cb1bd1f9}';

class IDeviceInformationStatics2 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDeviceInformationStatics2.fromPtr(super.ptr);

  factory IDeviceInformationStatics2.from(IInspectable interface) => interface
      .cast(IDeviceInformationStatics2.fromPtr, IID_IDeviceInformationStatics2);

  String getAqsFilterFromDeviceClass(DeviceClass deviceClass) {
    final aqsFilter = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 deviceClass,
                          Pointer<IntPtr> aqsFilter)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int deviceClass,
                  Pointer<IntPtr>
                      aqsFilter)>()(ptr.ref.lpVtbl, deviceClass.value, aqsFilter);

      if (FAILED(hr)) throwWindowsException(hr);

      return aqsFilter.toDartString();
    } finally {
      free(aqsFilter);
    }
  }

  Future<DeviceInformation?> createFromIdAsyncWithKindAndAdditionalProperties(
      String deviceId,
      IIterable<String>? additionalProperties,
      DeviceInformationKind kind) {
    final asyncOp = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr deviceId,
                            VTablePointer additionalProperties,
                            Int32 kind,
                            Pointer<COMObject> asyncOp)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int deviceId,
                    VTablePointer additionalProperties,
                    int kind,
                    Pointer<COMObject> asyncOp)>()(ptr.ref.lpVtbl,
        deviceId.toHString(), additionalProperties.lpVtbl, kind.value, asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(asyncOp,
        creator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection>
      findAllAsyncWithKindAqsFilterAndAdditionalProperties(String aqsFilter,
          IIterable<String>? additionalProperties, DeviceInformationKind kind) {
    final asyncOp = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr aqsFilter,
                            VTablePointer additionalProperties,
                            Int32 kind,
                            Pointer<COMObject> asyncOp)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    int kind,
                    Pointer<COMObject> asyncOp)>()(
        ptr.ref.lpVtbl,
        aqsFilter.toHString(),
        additionalProperties.lpVtbl,
        kind.value,
        asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        asyncOp,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  DeviceWatcher? createWatcherWithKindAqsFilterAndAdditionalProperties(
      String aqsFilter,
      IIterable<String>? additionalProperties,
      DeviceInformationKind kind) {
    final watcher = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr aqsFilter,
                            VTablePointer additionalProperties,
                            Int32 kind,
                            Pointer<COMObject> watcher)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    int kind,
                    Pointer<COMObject> watcher)>()(
        ptr.ref.lpVtbl,
        aqsFilter.toHString(),
        additionalProperties.lpVtbl,
        kind.value,
        watcher);

    if (FAILED(hr)) {
      free(watcher);
      throwWindowsException(hr);
    }

    if (watcher.isNull) {
      free(watcher);
      return null;
    }

    return DeviceWatcher.fromPtr(watcher);
  }
}
