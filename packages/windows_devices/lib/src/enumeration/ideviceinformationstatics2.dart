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

import 'deviceclass.dart';
import 'deviceinformation.dart';
import 'deviceinformationcollection.dart';
import 'deviceinformationkind.dart';
import 'devicewatcher.dart';

/// @nodoc
const IID_IDeviceInformationStatics2 = '{493b4f34-a84f-45fd-9167-15d1cb1bd1f9}';

class IDeviceInformationStatics2 extends IInspectable {
  IDeviceInformationStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDeviceInformationStatics2Vtbl>().ref;

  final _IDeviceInformationStatics2Vtbl _vtable;

  factory IDeviceInformationStatics2.from(IInspectable interface) => interface
      .cast(IDeviceInformationStatics2.fromPtr, IID_IDeviceInformationStatics2);

  String getAqsFilterFromDeviceClass(DeviceClass deviceClass) {
    final aqsFilter = calloc<IntPtr>();

    try {
      final hr = _vtable.GetAqsFilterFromDeviceClass.asFunction<
              int Function(VTablePointer lpVtbl, int deviceClass,
                  Pointer<IntPtr> aqsFilter)>()(
          lpVtbl, deviceClass.value, aqsFilter);

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

    final hr =
        _vtable.CreateFromIdAsyncWithKindAndAdditionalProperties.asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int deviceId,
                    VTablePointer additionalProperties,
                    int kind,
                    Pointer<COMObject> asyncOp)>()(lpVtbl, deviceId.toHString(),
            additionalProperties.lpVtbl, kind.value, asyncOp);

    if (FAILED(hr)) {
      free(asyncOp);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<DeviceInformation?>.fromPtr(asyncOp,
        tResultObjectCreator: DeviceInformation.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<DeviceInformationCollection>
      findAllAsyncWithKindAqsFilterAndAdditionalProperties(String aqsFilter,
          IIterable<String>? additionalProperties, DeviceInformationKind kind) {
    final asyncOp = calloc<COMObject>();

    final hr =
        _vtable.FindAllAsyncWithKindAqsFilterAndAdditionalProperties.asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    int kind,
                    Pointer<COMObject> asyncOp)>()(
            lpVtbl,
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
        tResultObjectCreator: DeviceInformationCollection.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  DeviceWatcher? createWatcherWithKindAqsFilterAndAdditionalProperties(
      String aqsFilter,
      IIterable<String>? additionalProperties,
      DeviceInformationKind kind) {
    final watcher = calloc<COMObject>();

    final hr = _vtable.CreateWatcherWithKindAqsFilterAndAdditionalProperties
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int aqsFilter,
                    VTablePointer additionalProperties,
                    int kind,
                    Pointer<COMObject> watcher)>()(
        lpVtbl,
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

final class _IDeviceInformationStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 deviceClass,
              Pointer<IntPtr> aqsFilter)>> GetAqsFilterFromDeviceClass;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  IntPtr deviceId,
                  VTablePointer additionalProperties,
                  Int32 kind,
                  Pointer<COMObject> asyncOp)>>
      CreateFromIdAsyncWithKindAndAdditionalProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  IntPtr aqsFilter,
                  VTablePointer additionalProperties,
                  Int32 kind,
                  Pointer<COMObject> asyncOp)>>
      FindAllAsyncWithKindAqsFilterAndAdditionalProperties;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  IntPtr aqsFilter,
                  VTablePointer additionalProperties,
                  Int32 kind,
                  Pointer<COMObject> watcher)>>
      CreateWatcherWithKindAqsFilterAndAdditionalProperties;
}
