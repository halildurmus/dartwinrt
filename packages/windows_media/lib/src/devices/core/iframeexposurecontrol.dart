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
const IID_IFrameExposureControl = '{b1605a61-ffaf-4752-b621-f5b6f117f432}';

class IFrameExposureControl extends IInspectable {
  IFrameExposureControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IFrameExposureControlVtbl>().ref;

  final _IFrameExposureControlVtbl _vtable;

  factory IFrameExposureControl.from(IInspectable interface) =>
      interface.cast(IFrameExposureControl.fromPtr, IID_IFrameExposureControl);

  bool get auto {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Auto.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set auto(bool value) {
    final hr = _vtable.put_Auto
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Duration? get value {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Value.asFunction<
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

    return IReference<Duration?>.fromPtr(value,
            referenceIid: '{604d0c4c-91de-5c2a-935f-362f13eaf800}')
        .value;
  }

  set value(Duration? value) {
    final hr = _vtable.put_Value.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer value)>()(
        lpVtbl, value?.toReference().lpVtbl ?? nullptr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IFrameExposureControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Auto;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_Auto;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Value;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer value)>>
      put_Value;
}
