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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'deviceinformation.dart';
import 'deviceinformationcollection.dart';
import 'devicewatcher.dart';
import 'enums.g.dart';

/// @nodoc
const IID_IDeviceInformationStatics = '{c17f100e-3a46-4a78-8013-769dc9b97390}';

/// {@category interface}
class IDeviceInformationStatics extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IDeviceInformationStatics.fromRawPointer(super.ptr);

  factory IDeviceInformationStatics.from(IInspectable interface) =>
      IDeviceInformationStatics.fromRawPointer(
          interface.toInterface(IID_IDeviceInformationStatics));

  Future<DeviceInformation?> createFromIdAsync(String deviceId) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformation?>();
    final deviceIdHString = convertToHString(deviceId);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr deviceId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int deviceId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceIdHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(deviceIdHString);

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromRawPointer(
        retValuePtr,
        creator: DeviceInformation.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceInformation?> createFromIdAsyncAdditionalProperties(
      String deviceId, IIterable<String>? additionalProperties) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformation?>();
    final deviceIdHString = convertToHString(deviceId);

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr deviceId,
                            LPVTBL additionalProperties,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int deviceId,
                    LPVTBL additionalProperties,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        deviceIdHString,
        additionalProperties == null
            ? nullptr
            : additionalProperties.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(deviceIdHString);

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromRawPointer(
        retValuePtr,
        creator: DeviceInformation.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceInformationCollection?> findAllAsync() {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformationCollection?>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<DeviceInformationCollection?>.fromRawPointer(
            retValuePtr,
            creator: DeviceInformationCollection.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceInformationCollection?> findAllAsyncDeviceClass(
      DeviceClass deviceClass) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformationCollection?>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 deviceClass,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int deviceClass,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceClass.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<DeviceInformationCollection?>.fromRawPointer(
            retValuePtr,
            creator: DeviceInformationCollection.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceInformationCollection?> findAllAsyncAqsFilter(String aqsFilter) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformationCollection?>();
    final aqsFilterHString = convertToHString(aqsFilter);

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr aqsFilter,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int aqsFilter,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, aqsFilterHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(aqsFilterHString);

    final asyncOperation =
        IAsyncOperation<DeviceInformationCollection?>.fromRawPointer(
            retValuePtr,
            creator: DeviceInformationCollection.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  Future<DeviceInformationCollection?>
      findAllAsyncAqsFilterAndAdditionalProperties(
          String aqsFilter, IIterable<String>? additionalProperties) {
    final retValuePtr = calloc<COMObject>();
    final completer = Completer<DeviceInformationCollection?>();
    final aqsFilterHString = convertToHString(aqsFilter);

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr aqsFilter,
                            LPVTBL additionalProperties,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int aqsFilter,
                    LPVTBL additionalProperties,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        aqsFilterHString,
        additionalProperties == null
            ? nullptr
            : additionalProperties.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(aqsFilterHString);

    final asyncOperation =
        IAsyncOperation<DeviceInformationCollection?>.fromRawPointer(
            retValuePtr,
            creator: DeviceInformationCollection.fromRawPointer);
    completeAsyncOperation(
        asyncOperation, completer, asyncOperation.getResults);

    return completer.future;
  }

  DeviceWatcher? createWatcher() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromRawPointer(retValuePtr);
  }

  DeviceWatcher? createWatcherDeviceClass(DeviceClass deviceClass) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, Int32 deviceClass,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int deviceClass,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, deviceClass.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromRawPointer(retValuePtr);
  }

  DeviceWatcher? createWatcherAqsFilter(String aqsFilter) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = convertToHString(aqsFilter);

    final hr = ptr.ref.vtable
            .elementAt(14)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr aqsFilter,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int aqsFilter,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, aqsFilterHString, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(aqsFilterHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromRawPointer(retValuePtr);
  }

  DeviceWatcher? createWatcherAqsFilterAndAdditionalProperties(
      String aqsFilter, IIterable<String>? additionalProperties) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = convertToHString(aqsFilter);

    final hr = ptr.ref.vtable
            .elementAt(15)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr aqsFilter,
                            LPVTBL additionalProperties,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int aqsFilter,
                    LPVTBL additionalProperties,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        aqsFilterHString,
        additionalProperties == null
            ? nullptr
            : additionalProperties.ptr.ref.lpVtbl,
        retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    WindowsDeleteString(aqsFilterHString);

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromRawPointer(retValuePtr);
  }
}
