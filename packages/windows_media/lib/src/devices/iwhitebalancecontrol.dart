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

import 'colortemperaturepreset.dart';

/// @nodoc
const IID_IWhiteBalanceControl = '{781f047e-7162-49c8-a8f9-9481c565363e}';

class IWhiteBalanceControl extends IInspectable {
  IWhiteBalanceControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IWhiteBalanceControlVtbl>().ref;

  final _IWhiteBalanceControlVtbl _vtable;

  factory IWhiteBalanceControl.from(IInspectable interface) =>
      interface.cast(IWhiteBalanceControl.fromPtr, IID_IWhiteBalanceControl);

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

  ColorTemperaturePreset get preset {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Preset.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return ColorTemperaturePreset.from(value.value);
    } finally {
      free(value);
    }
  }

  Future<void> setPresetAsync(ColorTemperaturePreset preset) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetPresetAsync.asFunction<
        int Function(VTablePointer lpVtbl, int preset,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, preset.value, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  int get min {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Min.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get max {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Max.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get step {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Step.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get value {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Value.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<void> setValueAsync(int temperature) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetValueAsync.asFunction<
        int Function(VTablePointer lpVtbl, int temperature,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, temperature, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}

final class _IWhiteBalanceControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Preset;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 preset,
              Pointer<COMObject> asyncInfo)>> SetPresetAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Min;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Max;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Step;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Value;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Uint32 temperature,
              Pointer<COMObject> asyncInfo)>> SetValueAsync;
}
