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
const IID_IRegionOfInterest = '{e5ecc834-ce66-4e05-a78f-cf391a5ec2d1}';

class IRegionOfInterest extends IInspectable {
  IRegionOfInterest.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IRegionOfInterestVtbl>().ref;

  final _IRegionOfInterestVtbl _vtable;

  factory IRegionOfInterest.from(IInspectable interface) =>
      interface.cast(IRegionOfInterest.fromPtr, IID_IRegionOfInterest);

  bool get autoFocusEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoFocusEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set autoFocusEnabled(bool value) {
    final hr = _vtable.put_AutoFocusEnabled
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get autoWhiteBalanceEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoWhiteBalanceEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set autoWhiteBalanceEnabled(bool value) {
    final hr = _vtable.put_AutoWhiteBalanceEnabled
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool get autoExposureEnabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_AutoExposureEnabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set autoExposureEnabled(bool value) {
    final hr = _vtable.put_AutoExposureEnabled
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  Rect get bounds {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_Bounds.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set bounds(Rect value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_Bounds
            .asFunction<int Function(VTablePointer lpVtbl, NativeRect value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IRegionOfInterestVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoFocusEnabled;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_AutoFocusEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoWhiteBalanceEnabled;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_AutoWhiteBalanceEnabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_AutoExposureEnabled;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_AutoExposureEnabled;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_Bounds;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, NativeRect value)>> put_Bounds;
}
