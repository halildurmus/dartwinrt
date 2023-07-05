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

import 'deviceclass.dart';
import 'deviceinformation.dart';
import 'deviceinformationcollection.dart';
import 'devicewatcher.dart';

/// @nodoc
const IID_IDeviceInformationStatics = '{c17f100e-3a46-4a78-8013-769dc9b97390}';

class IDeviceInformationStatics extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IDeviceInformationStatics.fromPtr(super.ptr);

  factory IDeviceInformationStatics.from(IInspectable interface) =>
      IDeviceInformationStatics.fromPtr(
          interface.toInterface(IID_IDeviceInformationStatics));

  Future<DeviceInformation?> createFromIdAsync(String deviceId) {
    final asyncOp = calloc<COMObject>();
    final deviceIdHString = deviceId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr deviceId,
                            Pointer<COMObject> asyncOp)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int deviceId,
                    Pointer<COMObject> asyncOp)>()(
        ptr.ref.lpVtbl, deviceIdHString, asyncOp);

    WindowsDeleteString(deviceIdHString);

    if (FAILED(hr)) {
      free(asyncOp);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(asyncOp,
        creator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformation?> createFromIdAsyncAdditionalProperties(
      String deviceId, IIterable<String>? additionalProperties) {
    final asyncOp = calloc<COMObject>();
    final deviceIdHString = deviceId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr deviceId,
                            VTablePointer additionalProperties,
                            Pointer<COMObject> asyncOp)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int deviceId,
                    VTablePointer additionalProperties,
                    Pointer<COMObject> asyncOp)>()(
        ptr.ref.lpVtbl,
        deviceIdHString,
        additionalProperties == null
            ? nullptr
            : IInspectable(additionalProperties
                    .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
                .ptr
                .ref
                .lpVtbl,
        asyncOp);

    WindowsDeleteString(deviceIdHString);

    if (FAILED(hr)) {
      free(asyncOp);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(asyncOp,
        creator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection> findAllAsync() {
    final asyncOp = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> asyncOp)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> asyncOp)>()(ptr.ref.lpVtbl, asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        asyncOp,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection> findAllAsyncDeviceClass(
      DeviceClass deviceClass) {
    final asyncOp = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 deviceClass,
                        Pointer<COMObject> asyncOp)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int deviceClass,
                Pointer<COMObject>
                    asyncOp)>()(ptr.ref.lpVtbl, deviceClass.value, asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        asyncOp,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection> findAllAsyncAqsFilter(String aqsFilter) {
    final asyncOp = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr aqsFilter,
                            Pointer<COMObject> asyncOp)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int aqsFilter,
                    Pointer<COMObject> asyncOp)>()(
        ptr.ref.lpVtbl, aqsFilterHString, asyncOp);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(asyncOp);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        asyncOp,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection>
      findAllAsyncAqsFilterAndAdditionalProperties(
          String aqsFilter, IIterable<String>? additionalProperties) {
    final asyncOp = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr aqsFilter,
                            VTablePointer additionalProperties,
                            Pointer<COMObject> asyncOp)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    Pointer<COMObject> asyncOp)>()(
        ptr.ref.lpVtbl,
        aqsFilterHString,
        additionalProperties == null
            ? nullptr
            : IInspectable(additionalProperties
                    .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
                .ptr
                .ref
                .lpVtbl,
        asyncOp);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(asyncOp);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformationCollection>.fromPtr(
        asyncOp,
        creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  DeviceWatcher? createWatcher() {
    final watcher = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> watcher)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> watcher)>()(ptr.ref.lpVtbl, watcher);

    if (FAILED(hr)) {
      free(watcher);
      throw WindowsException(hr);
    }

    if (watcher.isNull) {
      free(watcher);
      return null;
    }

    return DeviceWatcher.fromPtr(watcher);
  }

  DeviceWatcher? createWatcherDeviceClass(DeviceClass deviceClass) {
    final watcher = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 deviceClass,
                        Pointer<COMObject> watcher)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int deviceClass,
                Pointer<COMObject>
                    watcher)>()(ptr.ref.lpVtbl, deviceClass.value, watcher);

    if (FAILED(hr)) {
      free(watcher);
      throw WindowsException(hr);
    }

    if (watcher.isNull) {
      free(watcher);
      return null;
    }

    return DeviceWatcher.fromPtr(watcher);
  }

  DeviceWatcher? createWatcherAqsFilter(String aqsFilter) {
    final watcher = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr aqsFilter,
                            Pointer<COMObject> watcher)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int aqsFilter,
                    Pointer<COMObject> watcher)>()(
        ptr.ref.lpVtbl, aqsFilterHString, watcher);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(watcher);
      throw WindowsException(hr);
    }

    if (watcher.isNull) {
      free(watcher);
      return null;
    }

    return DeviceWatcher.fromPtr(watcher);
  }

  DeviceWatcher? createWatcherAqsFilterAndAdditionalProperties(
      String aqsFilter, IIterable<String>? additionalProperties) {
    final watcher = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr aqsFilter,
                            VTablePointer additionalProperties,
                            Pointer<COMObject> watcher)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    Pointer<COMObject> watcher)>()(
        ptr.ref.lpVtbl,
        aqsFilterHString,
        additionalProperties == null
            ? nullptr
            : IInspectable(additionalProperties
                    .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
                .ptr
                .ref
                .lpVtbl,
        watcher);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(watcher);
      throw WindowsException(hr);
    }

    if (watcher.isNull) {
      free(watcher);
      return null;
    }

    return DeviceWatcher.fromPtr(watcher);
  }
}
