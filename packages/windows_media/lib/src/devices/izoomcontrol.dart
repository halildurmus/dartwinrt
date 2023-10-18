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

/// @nodoc
const IID_IZoomControl = '{3a1e0b12-32da-4c17-bfd7-8d0c73c8f5a5}';

class IZoomControl extends IInspectable {
  IZoomControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IZoomControlVtbl>().ref;

  final _IZoomControlVtbl _vtable;

  factory IZoomControl.from(IInspectable interface) =>
      interface.cast(IZoomControl.fromPtr, IID_IZoomControl);

  bool get supported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get min {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_Min.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get max {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_Max.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get step {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_Step.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
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

final class _IZoomControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_Min;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_Max;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_Step;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_Value;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Float value)>>
      put_Value;
}
