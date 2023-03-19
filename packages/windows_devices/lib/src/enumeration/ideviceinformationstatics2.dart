// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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
import 'deviceinformationkind.dart';
import 'devicewatcher.dart';

/// @nodoc
const IID_IDeviceInformationStatics2 = '{493b4f34-a84f-45fd-9167-15d1cb1bd1f9}';

/// {@category interface}
class IDeviceInformationStatics2 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IDeviceInformationStatics2.fromPtr(super.ptr);

  factory IDeviceInformationStatics2.from(IInspectable interface) =>
      IDeviceInformationStatics2.fromPtr(
          interface.toInterface(IID_IDeviceInformationStatics2));

  String getAqsFilterFromDeviceClass(DeviceClass deviceClass) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, Int32 deviceClass,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int deviceClass,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, deviceClass.value, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  Future<DeviceInformation?> createFromIdAsyncWithKindAndAdditionalProperties(
      String deviceId,
      IIterable<String>? additionalProperties,
      DeviceInformationKind kind) {
    final retValuePtr = calloc<COMObject>();
    final deviceIdHString = deviceId.toHString();
    final additionalPropertiesPtr = additionalProperties == null
        ? nullptr
        : IInspectable(additionalProperties
                .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr deviceId,
                            LPVTBL additionalProperties,
                            Int32 kind,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int deviceId,
                    LPVTBL additionalProperties,
                    int kind,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        deviceIdHString, additionalPropertiesPtr, kind.value, retValuePtr);

    WindowsDeleteString(deviceIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(
        retValuePtr,
        creator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection?>
      findAllAsyncWithKindAqsFilterAndAdditionalProperties(String aqsFilter,
          IIterable<String>? additionalProperties, DeviceInformationKind kind) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();
    final additionalPropertiesPtr = additionalProperties == null
        ? nullptr
        : IInspectable(additionalProperties
                .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr aqsFilter,
                            LPVTBL additionalProperties,
                            Int32 kind,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int aqsFilter,
                    LPVTBL additionalProperties,
                    int kind,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        aqsFilterHString, additionalPropertiesPtr, kind.value, retValuePtr);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<DeviceInformationCollection?>.fromPtr(retValuePtr,
            creator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  DeviceWatcher? createWatcherWithKindAqsFilterAndAdditionalProperties(
      String aqsFilter,
      IIterable<String>? additionalProperties,
      DeviceInformationKind kind) {
    final retValuePtr = calloc<COMObject>();
    final aqsFilterHString = aqsFilter.toHString();
    final additionalPropertiesPtr = additionalProperties == null
        ? nullptr
        : IInspectable(additionalProperties
                .toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
            .ptr
            .ref
            .lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            LPVTBL lpVtbl,
                            IntPtr aqsFilter,
                            LPVTBL additionalProperties,
                            Int32 kind,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    LPVTBL lpVtbl,
                    int aqsFilter,
                    LPVTBL additionalProperties,
                    int kind,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        aqsFilterHString, additionalPropertiesPtr, kind.value, retValuePtr);

    WindowsDeleteString(aqsFilterHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return DeviceWatcher.fromPtr(retValuePtr);
  }
}
