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
const IID_IIsoSpeedControl2 = '{6f1578f2-6d77-4f8a-8c2f-6130b6395053}';

class IIsoSpeedControl2 extends IInspectable {
  IIsoSpeedControl2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IIsoSpeedControl2Vtbl>().ref;

  final _IIsoSpeedControl2Vtbl _vtable;

  factory IIsoSpeedControl2.from(IInspectable interface) =>
      interface.cast(IIsoSpeedControl2.fromPtr, IID_IIsoSpeedControl2);

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

  Future<void> setValueAsync(int isoSpeed) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetValueAsync.asFunction<
        int Function(VTablePointer lpVtbl, int isoSpeed,
            Pointer<COMObject> asyncInfo)>()(lpVtbl, isoSpeed, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

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

  Future<void> setAutoAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.SetAutoAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }
}

final class _IIsoSpeedControl2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
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
          HRESULT Function(VTablePointer lpVtbl, Uint32 isoSpeed,
              Pointer<COMObject> asyncInfo)>> SetValueAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Auto;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      SetAutoAsync;
}
