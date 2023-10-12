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
import 'package:windows_storage/windows_storage.dart';

import 'bitmapalphamode.dart';
import 'bitmapbuffer.dart';
import 'bitmapbufferaccessmode.dart';
import 'bitmappixelformat.dart';
import 'softwarebitmap.dart';

/// @nodoc
const IID_ISoftwareBitmap = '{689e0708-7eef-483f-963f-da938818e073}';

class ISoftwareBitmap extends IInspectable implements IClosable {
  // vtable begins at 6, is 14 entries long.
  ISoftwareBitmap.fromPtr(super.ptr);

  factory ISoftwareBitmap.from(IInspectable interface) =>
      interface.cast(ISoftwareBitmap.fromPtr, IID_ISoftwareBitmap);

  BitmapPixelFormat get bitmapPixelFormat {
    final value = calloc<Int32>();

    try {
      final hr = vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> value)>>>()
          .value
          .asFunction<
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
      final hr = vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Bool> value)>>>()
          .value
          .asFunction<
              int Function(
                  VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set dpiX(double value) {
    final hr =
        vtable
                .elementAt(11)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Double value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
            lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get dpiX {
    final value = calloc<Double>();

    try {
      final hr = vtable
              .elementAt(12)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Double> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Double> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set dpiY(double value) {
    final hr =
        vtable
                .elementAt(13)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl, Double value)>>>()
                .value
                .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
            lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get dpiY {
    final value = calloc<Double>();

    try {
      final hr = vtable
              .elementAt(14)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Double> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Double> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  BitmapBuffer? lockBuffer(BitmapBufferAccessMode mode) {
    final value = calloc<COMObject>();

    final hr = vtable
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, Int32 mode,
                        Pointer<COMObject> value)>>>()
        .value
        .asFunction<
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
    final hr = vtable
            .elementAt(16)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer bitmap)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer bitmap)>()(
        lpVtbl, bitmap.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void copyFromBuffer(IBuffer? buffer) {
    final hr = vtable
            .elementAt(17)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer buffer)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void copyToBuffer(IBuffer? buffer) {
    final hr = vtable
            .elementAt(18)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, VTablePointer buffer)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer buffer)>()(
        lpVtbl, buffer.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  SoftwareBitmap? getReadOnlyView() {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(19)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

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
