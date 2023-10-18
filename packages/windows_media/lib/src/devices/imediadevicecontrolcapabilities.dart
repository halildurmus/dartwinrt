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
const IID_IMediaDeviceControlCapabilities =
    '{23005816-eb85-43e2-b92b-8240d5ee70ec}';

class IMediaDeviceControlCapabilities extends IInspectable {
  IMediaDeviceControlCapabilities.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IMediaDeviceControlCapabilitiesVtbl>().ref;

  final _IMediaDeviceControlCapabilitiesVtbl _vtable;

  factory IMediaDeviceControlCapabilities.from(IInspectable interface) =>
      interface.cast(IMediaDeviceControlCapabilities.fromPtr,
          IID_IMediaDeviceControlCapabilities);

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
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_Min.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get max {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_Max.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get step {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_Step.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get default_ {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_Default.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get autoModeSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoModeSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IMediaDeviceControlCapabilitiesVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_Min;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_Max;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_Step;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_Default;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoModeSupported;
}
