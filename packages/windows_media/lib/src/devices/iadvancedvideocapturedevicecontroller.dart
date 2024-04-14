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

/// @nodoc
const IID_IAdvancedVideoCaptureDeviceController =
    '{de6ff4d3-2b96-4583-80ab-b5b01dc6a8d7}';

class IAdvancedVideoCaptureDeviceController extends IInspectable {
  IAdvancedVideoCaptureDeviceController.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IAdvancedVideoCaptureDeviceControllerVtbl>()
            .ref;

  final _IAdvancedVideoCaptureDeviceControllerVtbl _vtable;

  factory IAdvancedVideoCaptureDeviceController.from(IInspectable interface) =>
      interface.cast(IAdvancedVideoCaptureDeviceController.fromPtr,
          IID_IAdvancedVideoCaptureDeviceController);

  void setDeviceProperty(String propertyId, Object? propertyValue) {
    final hr = _vtable.SetDeviceProperty.asFunction<
            int Function(VTablePointer lpVtbl, int propertyId,
                VTablePointer propertyValue)>()(lpVtbl, propertyId.toHString(),
        propertyValue?.boxValue().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Object? getDeviceProperty(String propertyId) {
    final propertyValue = calloc<COMObject>();

    final hr = _vtable.GetDeviceProperty.asFunction<
            int Function(VTablePointer lpVtbl, int propertyId,
                Pointer<COMObject> propertyValue)>()(
        lpVtbl, propertyId.toHString(), propertyValue);

    if (FAILED(hr)) {
      free(propertyValue);
      throwWindowsException(hr);
    }

    if (propertyValue.isNull) {
      free(propertyValue);
      return null;
    }

    return IPropertyValue.fromPtr(propertyValue).value;
  }
}

final class _IAdvancedVideoCaptureDeviceControllerVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr propertyId,
              VTablePointer propertyValue)>> SetDeviceProperty;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr propertyId,
              Pointer<COMObject> propertyValue)>> GetDeviceProperty;
}
