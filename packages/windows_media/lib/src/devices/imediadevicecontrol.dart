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

import 'mediadevicecontrolcapabilities.dart';

/// @nodoc
const IID_IMediaDeviceControl = '{efa8dfa9-6f75-4863-ba0b-583f3036b4de}';

class IMediaDeviceControl extends IInspectable {
  IMediaDeviceControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IMediaDeviceControlVtbl>().ref;

  final _IMediaDeviceControlVtbl _vtable;

  factory IMediaDeviceControl.from(IInspectable interface) =>
      interface.cast(IMediaDeviceControl.fromPtr, IID_IMediaDeviceControl);

  MediaDeviceControlCapabilities? get capabilities {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Capabilities.asFunction<
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

    return MediaDeviceControlCapabilities.fromPtr(value);
  }

  (bool, {double value}) tryGetValue() {
    final succeeded = calloc<Bool>();
    final value = calloc<Double>();

    try {
      final hr = _vtable.TryGetValue.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Double> value,
              Pointer<Bool> succeeded)>()(lpVtbl, value, succeeded);

      if (FAILED(hr)) throwWindowsException(hr);

      return (succeeded.value, value: value.value);
    } finally {
      free(value);
      free(succeeded);
    }
  }

  bool trySetValue(double value) {
    final succeeded = calloc<Bool>();

    try {
      final hr = _vtable.TrySetValue.asFunction<
          int Function(VTablePointer lpVtbl, double value,
              Pointer<Bool> succeeded)>()(lpVtbl, value, succeeded);

      if (FAILED(hr)) throwWindowsException(hr);

      return succeeded.value;
    } finally {
      free(succeeded);
    }
  }

  (bool, {bool value}) tryGetAuto() {
    final succeeded = calloc<Bool>();
    final value = calloc<Bool>();

    try {
      final hr = _vtable.TryGetAuto.asFunction<
          int Function(VTablePointer lpVtbl, Pointer<Bool> value,
              Pointer<Bool> succeeded)>()(lpVtbl, value, succeeded);

      if (FAILED(hr)) throwWindowsException(hr);

      return (succeeded.value, value: value.value);
    } finally {
      free(value);
      free(succeeded);
    }
  }

  bool trySetAuto(bool value) {
    final succeeded = calloc<Bool>();

    try {
      final hr = _vtable.TrySetAuto.asFunction<
          int Function(VTablePointer lpVtbl, bool value,
              Pointer<Bool> succeeded)>()(lpVtbl, value, succeeded);

      if (FAILED(hr)) throwWindowsException(hr);

      return succeeded.value;
    } finally {
      free(succeeded);
    }
  }
}

final class _IMediaDeviceControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Capabilities;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value,
              Pointer<Bool> succeeded)>> TryGetValue;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Double value, Pointer<Bool> succeeded)>>
      TrySetValue;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value,
              Pointer<Bool> succeeded)>> TryGetAuto;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Bool value, Pointer<Bool> succeeded)>>
      TrySetAuto;
}
