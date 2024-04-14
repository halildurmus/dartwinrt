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

import '../directx/direct3d11/idirect3dsurface.dart';
import 'bitmapalphamode.dart';
import 'bitmappixelformat.dart';
import 'softwarebitmap.dart';

/// @nodoc
const IID_ISoftwareBitmapStatics = '{df0385db-672f-4a9d-806e-c2442f343e86}';

class ISoftwareBitmapStatics extends IInspectable {
  ISoftwareBitmapStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ISoftwareBitmapStaticsVtbl>().ref;

  final _ISoftwareBitmapStaticsVtbl _vtable;

  factory ISoftwareBitmapStatics.from(IInspectable interface) => interface.cast(
      ISoftwareBitmapStatics.fromPtr, IID_ISoftwareBitmapStatics);

  SoftwareBitmap? copy(SoftwareBitmap? source) {
    final value = calloc<COMObject>();

    final hr = _vtable.Copy.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer source,
            Pointer<COMObject> value)>()(lpVtbl, source.lpVtbl, value);

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

  SoftwareBitmap? convert(SoftwareBitmap? source, BitmapPixelFormat format) {
    final value = calloc<COMObject>();

    final hr = _vtable.Convert.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer source, int format,
                Pointer<COMObject> value)>()(
        lpVtbl, source.lpVtbl, format.value, value);

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

  SoftwareBitmap? convertWithAlpha(
      SoftwareBitmap? source, BitmapPixelFormat format, BitmapAlphaMode alpha) {
    final value = calloc<COMObject>();

    final hr = _vtable.ConvertWithAlpha.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer source, int format,
                int alpha, Pointer<COMObject> value)>()(
        lpVtbl, source.lpVtbl, format.value, alpha.value, value);

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

  SoftwareBitmap? createCopyFromBuffer(
      IBuffer? source, BitmapPixelFormat format, int width, int height) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateCopyFromBuffer.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer source, int format,
                int width, int height, Pointer<COMObject> value)>()(
        lpVtbl, source.lpVtbl, format.value, width, height, value);

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

  SoftwareBitmap? createCopyWithAlphaFromBuffer(IBuffer? source,
      BitmapPixelFormat format, int width, int height, BitmapAlphaMode alpha) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateCopyWithAlphaFromBuffer.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer source, int format,
                int width, int height, int alpha, Pointer<COMObject> value)>()(
        lpVtbl, source.lpVtbl, format.value, width, height, alpha.value, value);

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

  Future<SoftwareBitmap?> createCopyFromSurfaceAsync(
      IDirect3DSurface? surface) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateCopyFromSurfaceAsync.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer surface,
            Pointer<COMObject> value)>()(lpVtbl, surface.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(value,
        tResultObjectCreator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<SoftwareBitmap?> createCopyWithAlphaFromSurfaceAsync(
      IDirect3DSurface? surface, BitmapAlphaMode alpha) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateCopyWithAlphaFromSurfaceAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer surface, int alpha,
                Pointer<COMObject> value)>()(
        lpVtbl, surface.lpVtbl, alpha.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(value,
        tResultObjectCreator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _ISoftwareBitmapStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer source,
              Pointer<COMObject> value)>> Copy;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer source,
              Int32 format, Pointer<COMObject> value)>> Convert;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer source,
              Int32 format,
              Int32 alpha,
              Pointer<COMObject> value)>> ConvertWithAlpha;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer source,
              Int32 format,
              Int32 width,
              Int32 height,
              Pointer<COMObject> value)>> CreateCopyFromBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer source,
              Int32 format,
              Int32 width,
              Int32 height,
              Int32 alpha,
              Pointer<COMObject> value)>> CreateCopyWithAlphaFromBuffer;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer surface,
              Pointer<COMObject> value)>> CreateCopyFromSurfaceAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer surface,
              Int32 alpha,
              Pointer<COMObject> value)>> CreateCopyWithAlphaFromSurfaceAsync;
}
