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
const IID_IDigitalWindowBounds = '{dd4f21dd-d173-5c6b-8c25-bdd26d5122b1}';

class IDigitalWindowBounds extends IInspectable {
  IDigitalWindowBounds.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IDigitalWindowBoundsVtbl>().ref;

  final _IDigitalWindowBoundsVtbl _vtable;

  factory IDigitalWindowBounds.from(IInspectable interface) =>
      interface.cast(IDigitalWindowBounds.fromPtr, IID_IDigitalWindowBounds);

  double get normalizedOriginTop {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_NormalizedOriginTop.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set normalizedOriginTop(double value) {
    final hr = _vtable.put_NormalizedOriginTop
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get normalizedOriginLeft {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_NormalizedOriginLeft.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set normalizedOriginLeft(double value) {
    final hr = _vtable.put_NormalizedOriginLeft
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get scale {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_Scale.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set scale(double value) {
    final hr = _vtable.put_Scale
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IDigitalWindowBoundsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_NormalizedOriginTop;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_NormalizedOriginTop;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_NormalizedOriginLeft;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_NormalizedOriginLeft;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_Scale;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_Scale;
}
