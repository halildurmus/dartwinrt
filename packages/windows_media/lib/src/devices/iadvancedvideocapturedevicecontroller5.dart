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

import 'videodevicecontrollergetdevicepropertyresult.dart';
import 'videodevicecontrollersetdevicepropertystatus.dart';

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController5 =
    '{33512b17-b9cb-4a23-b875-f9eaab535492}';

class IAdvancedVideoCaptureDeviceController5 extends IInspectable {
  IAdvancedVideoCaptureDeviceController5.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceController5Vtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceController5Vtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController5.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController5.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController5);

  String get id {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Id.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  VideoDeviceControllerGetDevicePropertyResult? getDevicePropertyById(
      String propertyId, int? maxPropertyValueSize) {
    final value = calloc<COMObject>();

    final hr = _vtable.GetDevicePropertyById.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int propertyId,
                VTablePointer maxPropertyValueSize,
                Pointer<COMObject> value)>()(
        lpVtbl,
        propertyId.toHString(),
        maxPropertyValueSize?.toReference(IntType.uint32).lpVtbl ?? nullptr,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoDeviceControllerGetDevicePropertyResult.fromPtr(value);
  }

  VideoDeviceControllerSetDevicePropertyStatus setDevicePropertyById(
      String propertyId, Object? propertyValue) {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.SetDevicePropertyById.asFunction<
              int Function(VTablePointer lpVtbl, int propertyId,
                  VTablePointer propertyValue, Pointer<Int32> value)>()(
          lpVtbl,
          propertyId.toHString(),
          propertyValue?.boxValue().lpVtbl ?? nullptr,
          value);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoDeviceControllerSetDevicePropertyStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  VideoDeviceControllerGetDevicePropertyResult? getDevicePropertyByExtendedId(
      List<int> extendedPropertyId, int? maxPropertyValueSize) {
    final value = calloc<COMObject>();
    final extendedPropertyIdArray = extendedPropertyId.toArray<Uint8>();

    final hr = _vtable.GetDevicePropertyByExtendedId.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int extendedPropertyIdSize,
                Pointer<Uint8> extendedPropertyId,
                VTablePointer maxPropertyValueSize,
                Pointer<COMObject> value)>()(
        lpVtbl,
        extendedPropertyId.length,
        extendedPropertyIdArray,
        maxPropertyValueSize?.toReference(IntType.uint32).lpVtbl ?? nullptr,
        value);

    free(extendedPropertyIdArray);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return VideoDeviceControllerGetDevicePropertyResult.fromPtr(value);
  }

  VideoDeviceControllerSetDevicePropertyStatus setDevicePropertyByExtendedId(
      List<int> extendedPropertyId, List<int> propertyValue) {
    final value = calloc<Int32>();

    try {
      final extendedPropertyIdArray = extendedPropertyId.toArray<Uint8>();
      final propertyValueArray = propertyValue.toArray<Uint8>();

      final hr = _vtable.SetDevicePropertyByExtendedId.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  int extendedPropertyIdSize,
                  Pointer<Uint8> extendedPropertyId,
                  int propertyValueSize,
                  Pointer<Uint8> propertyValue,
                  Pointer<Int32> value)>()(
          lpVtbl,
          extendedPropertyId.length,
          extendedPropertyIdArray,
          propertyValue.length,
          propertyValueArray,
          value);

      free(extendedPropertyIdArray);
      free(propertyValueArray);

      if (FAILED(hr)) throwWindowsException(hr);

      return VideoDeviceControllerSetDevicePropertyStatus.from(value.value);
    } finally {
      free(value);
    }
  }
}

final class _IAdvancedVideoCaptureDeviceController5Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Id;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr propertyId,
              VTablePointer maxPropertyValueSize,
              Pointer<COMObject> value)>> GetDevicePropertyById;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              IntPtr propertyId,
              VTablePointer propertyValue,
              Pointer<Int32> value)>> SetDevicePropertyById;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 extendedPropertyIdSize,
              Pointer<Uint8> extendedPropertyId,
              VTablePointer maxPropertyValueSize,
              Pointer<COMObject> value)>> GetDevicePropertyByExtendedId;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 extendedPropertyIdSize,
              Pointer<Uint8> extendedPropertyId,
              Uint32 propertyValueSize,
              Pointer<Uint8> propertyValue,
              Pointer<Int32> value)>> SetDevicePropertyByExtendedId;
}
