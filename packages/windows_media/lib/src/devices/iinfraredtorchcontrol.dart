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

import 'infraredtorchmode.dart';

/// @nodoc
const IID_IInfraredTorchControl = '{1cba2c83-6cb6-5a04-a6fc-3be7b33ff056}';

class IInfraredTorchControl extends IInspectable {
  IInfraredTorchControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IInfraredTorchControlVtbl>().ref;

  final _IInfraredTorchControlVtbl _vtable;

  factory IInfraredTorchControl.from(IInspectable interface) =>
      interface.cast(IInfraredTorchControl.fromPtr, IID_IInfraredTorchControl);

  bool get isSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  List<InfraredTorchMode>? get supportedModes {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SupportedModes.asFunction<
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

    return IVectorView<InfraredTorchMode>.fromPtr(value,
            iterableIid: '{58a4b7b6-36c3-5541-b383-3690d7293c10}',
            tEnumCreator: InfraredTorchMode.from)
        .toList();
  }

  InfraredTorchMode get currentMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_CurrentMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return InfraredTorchMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set currentMode(InfraredTorchMode value) {
    final hr = _vtable.put_CurrentMode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get minPower {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_MinPower.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get maxPower {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_MaxPower.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get powerStep {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PowerStep.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get power {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Power.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set power(int value) {
    final hr = _vtable.put_Power
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IInfraredTorchControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SupportedModes;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_CurrentMode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_CurrentMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_MinPower;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_MaxPower;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PowerStep;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Power;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Power;
}
