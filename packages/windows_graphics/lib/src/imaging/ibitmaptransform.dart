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

import 'bitmapbounds.dart';
import 'bitmapflip.dart';
import 'bitmapinterpolationmode.dart';
import 'bitmaprotation.dart';

/// @nodoc
const IID_IBitmapTransform = '{ae755344-e268-4d35-adcf-e995d31a8d34}';

class IBitmapTransform extends IInspectable {
  IBitmapTransform.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapTransformVtbl>().ref;

  final _IBitmapTransformVtbl _vtable;

  factory IBitmapTransform.from(IInspectable interface) =>
      interface.cast(IBitmapTransform.fromPtr, IID_IBitmapTransform);

  int get scaledWidth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_ScaledWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set scaledWidth(int value) {
    final hr = _vtable.put_ScaledWidth
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  int get scaledHeight {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_ScaledHeight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set scaledHeight(int value) {
    final hr = _vtable.put_ScaledHeight
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  BitmapInterpolationMode get interpolationMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_InterpolationMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BitmapInterpolationMode.from(value.value);
    } finally {
      free(value);
    }
  }

  set interpolationMode(BitmapInterpolationMode value) {
    final hr = _vtable.put_InterpolationMode
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  BitmapFlip get flip {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Flip.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BitmapFlip.from(value.value);
    } finally {
      free(value);
    }
  }

  set flip(BitmapFlip value) {
    final hr = _vtable.put_Flip
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  BitmapRotation get rotation {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Rotation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BitmapRotation.from(value.value);
    } finally {
      free(value);
    }
  }

  set rotation(BitmapRotation value) {
    final hr = _vtable.put_Rotation
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  BitmapBounds get bounds {
    final value = calloc<NativeBitmapBounds>();

    try {
      final hr = _vtable.get_Bounds.asFunction<
          int Function(VTablePointer lpVtbl,
              Pointer<NativeBitmapBounds> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  set bounds(BitmapBounds value) {
    final valueNativeStructPtr = value.toNative();

    final hr = _vtable.put_Bounds.asFunction<
            int Function(VTablePointer lpVtbl, NativeBitmapBounds value)>()(
        lpVtbl, valueNativeStructPtr.ref);

    free(valueNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IBitmapTransformVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_ScaledWidth;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_ScaledWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_ScaledHeight;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_ScaledHeight;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_InterpolationMode;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_InterpolationMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Flip;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Flip;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Rotation;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_Rotation;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<NativeBitmapBounds> value)>>
      get_Bounds;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, NativeBitmapBounds value)>>
      put_Bounds;
}
