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

import 'zoomtransitionmode.dart';

/// @nodoc
const IID_IZoomSettings = '{6ad66b24-14b4-4bfd-b18f-88fe24463b52}';

class IZoomSettings extends IInspectable {
  IZoomSettings.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IZoomSettingsVtbl>().ref;

  final _IZoomSettingsVtbl _vtable;

  factory IZoomSettings.from(IInspectable interface) =>
      interface.cast(IZoomSettings.fromPtr, IID_IZoomSettings);

  ZoomTransitionMode get mode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Mode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ZoomTransitionMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set mode(ZoomTransitionMode value) {
    final hr = _vtable.put_Mode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get value {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set value(double value) {
    final hr = _vtable.put_Value
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IZoomSettingsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Mode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Mode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_Value;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      put_Value;
}
