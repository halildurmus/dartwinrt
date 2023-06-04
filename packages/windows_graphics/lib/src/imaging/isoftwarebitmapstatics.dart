// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
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
  // vtable begins at 6, is 7 entries long.
  ISoftwareBitmapStatics.fromPtr(super.ptr);

  factory ISoftwareBitmapStatics.from(IInspectable interface) =>
      ISoftwareBitmapStatics.fromPtr(
          interface.toInterface(IID_ISoftwareBitmapStatics));

  SoftwareBitmap? copy(SoftwareBitmap? source) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer source,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer source,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, sourcePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return SoftwareBitmap.fromPtr(retValuePtr);
  }

  SoftwareBitmap? convert(SoftwareBitmap? source, BitmapPixelFormat format) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer source,
                                Int32 format,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer source,
                        int format, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, sourcePtr, format.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return SoftwareBitmap.fromPtr(retValuePtr);
  }

  SoftwareBitmap? convertWithAlpha(
      SoftwareBitmap? source, BitmapPixelFormat format, BitmapAlphaMode alpha) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer source,
                            Int32 format,
                            Int32 alpha,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer source,
                    int format, int alpha, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, sourcePtr, format.value, alpha.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return SoftwareBitmap.fromPtr(retValuePtr);
  }

  SoftwareBitmap? createCopyFromBuffer(
      IBuffer? source, BitmapPixelFormat format, int width, int height) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer source,
                            Int32 format,
                            Int32 width,
                            Int32 height,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer source,
                    int format,
                    int width,
                    int height,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, sourcePtr, format.value, width, height, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return SoftwareBitmap.fromPtr(retValuePtr);
  }

  SoftwareBitmap? createCopyWithAlphaFromBuffer(IBuffer? source,
      BitmapPixelFormat format, int width, int height, BitmapAlphaMode alpha) {
    final retValuePtr = calloc<COMObject>();
    final sourcePtr = source == null ? nullptr : source.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer source,
                            Int32 format,
                            Int32 width,
                            Int32 height,
                            Int32 alpha,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer source,
                    int format,
                    int width,
                    int height,
                    int alpha,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        sourcePtr, format.value, width, height, alpha.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return SoftwareBitmap.fromPtr(retValuePtr);
  }

  Future<SoftwareBitmap?> createCopyFromSurfaceAsync(
      IDirect3DSurface? surface) {
    final retValuePtr = calloc<COMObject>();
    final surfacePtr = surface == null ? nullptr : surface.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer surface,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer surface,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, surfacePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(retValuePtr,
        creator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<SoftwareBitmap?> createCopyWithAlphaFromSurfaceAsync(
      IDirect3DSurface? surface, BitmapAlphaMode alpha) {
    final retValuePtr = calloc<COMObject>();
    final surfacePtr = surface == null ? nullptr : surface.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer surface,
                            Int32 alpha,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer surface,
                    int alpha, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, surfacePtr, alpha.value, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(retValuePtr,
        creator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}
