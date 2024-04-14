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
import 'package:windows_storage/windows_storage.dart';

import 'bitmapalphamode.dart';
import 'bitmapbuffer.dart';
import 'bitmapbufferaccessmode.dart';
import 'bitmappixelformat.dart';
import 'softwarebitmap.dart';

/// @nodoc
const IID_ISoftwareBitmap = '{689e0708-7eef-483f-963f-da938818e073}';

class ISoftwareBitmap extends IInspectable implements IClosable {
  ISoftwareBitmap.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ISoftwareBitmapVtbl>().ref;

  final _ISoftwareBitmapVtbl _vtable;

  factory ISoftwareBitmap.from(IInspectable interface) =>
      interface.cast(ISoftwareBitmap.fromPtr, IID_ISoftwareBitmap);

  BitmapPixelFormat get bitmapPixelFormat {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_BitmapPixelFormat.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BitmapPixelFormat.from(value.value);
    } finally {
      free(value);
    }
  }

  BitmapAlphaMode get bitmapAlphaMode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_BitmapAlphaMode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return BitmapAlphaMode.from(value.value);
    } finally {
      free(value);
    }
  }

  int get pixelWidth {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PixelWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get pixelHeight {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_PixelHeight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get isReadOnly {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsReadOnly.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set dpiX(double value) {
    final hr = _vtable.put_DpiX
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get dpiX {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_DpiX.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set dpiY(double value) {
    final hr = _vtable.put_DpiY
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get dpiY {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_DpiY.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  BitmapBuffer? lockBuffer(BitmapBufferAccessMode mode) {
    final value = calloc<COMObject>();

    final hr = _vtable.LockBuffer.asFunction<
        int Function(VTablePointer lpVtbl, int mode,
            Pointer<COMObject> value)>()(lpVtbl, mode.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return BitmapBuffer.fromPtr(value);
  }

  void copyTo(SoftwareBitmap? bitmap) {
    final hr = _vtable.CopyTo.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer bitmap)>()(
        lpVtbl, bitmap.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void copyFromBuffer(IBuffer? buffer) {
    final hr = _vtable.CopyFromBuffer.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void copyToBuffer(IBuffer? buffer) {
    final hr = _vtable.CopyToBuffer.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  SoftwareBitmap? getReadOnlyView() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetReadOnlyView.asFunction<
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

    return SoftwareBitmap.fromPtr(value);
  }

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}

final class _ISoftwareBitmapVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_BitmapPixelFormat;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_BitmapAlphaMode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PixelWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_PixelHeight;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsReadOnly;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_DpiX;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_DpiX;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_DpiY;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_DpiY;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 mode, Pointer<COMObject> value)>>
      LockBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer bitmap)>> CopyTo;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer)>>
      CopyFromBuffer;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, VTablePointer buffer)>>
      CopyToBuffer;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetReadOnlyView;
}
