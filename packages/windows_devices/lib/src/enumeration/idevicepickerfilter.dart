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

/// @nodoc
const IID_IDevicePickerFilter = '{91db92a2-57cb-48f1-9b59-a59b7a1f02a2}';

class IDevicePickerFilter extends IInspectable {
  IDevicePickerFilter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDevicePickerFilterVtbl>().ref;

  final _IDevicePickerFilterVtbl _vtable;

  factory IDevicePickerFilter.from(IInspectable interface) =>
      interface.cast(IDevicePickerFilter.fromPtr, IID_IDevicePickerFilter);

  IVector<DeviceClass>? get supportedDeviceClasses {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedDeviceClasses.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVector.fromPtr(value,
        iterableIid: '{47d4be05-58f1-522e-81c6-975eb4131bb9}',
        tEnumCreator: DeviceClass.from);
  }

  IVector<String>? get supportedDeviceSelectors {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedDeviceSelectors.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVector.fromPtr(value,
        iterableIid: '{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}');
  }
}

final class _IDevicePickerFilterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedDeviceClasses;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedDeviceSelectors;
}
