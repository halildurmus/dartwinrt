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
import 'package:windows_graphics/windows_graphics.dart';

import 'videoframe.dart';

/// @nodoc
const IID_IVideoFrameStatics = '{ab2a556f-6111-4b33-8ec3-2b209a02e17a}';

class IVideoFrameStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IVideoFrameStatics.fromPtr(super.ptr);

  factory IVideoFrameStatics.from(IInspectable interface) =>
      IVideoFrameStatics.fromPtr(interface.toInterface(IID_IVideoFrameStatics));

  VideoFrame? createAsDirect3D11SurfaceBacked(
      DirectXPixelFormat format, int width, int height) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 format,
                            Int32 width,
                            Int32 height,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int format, int width,
                    int height, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, format.value, width, height, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return VideoFrame.fromPtr(retValuePtr);
  }

  VideoFrame? createAsDirect3D11SurfaceBackedWithDevice(
      DirectXPixelFormat format,
      int width,
      int height,
      IDirect3DDevice? device) {
    final retValuePtr = calloc<COMObject>();
    final devicePtr = device == null ? nullptr : device.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 format,
                            Int32 width,
                            Int32 height,
                            VTablePointer device,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int format,
                    int width,
                    int height,
                    VTablePointer device,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, format.value, width, height, devicePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return VideoFrame.fromPtr(retValuePtr);
  }

  VideoFrame? createWithSoftwareBitmap(SoftwareBitmap? bitmap) {
    final retValuePtr = calloc<COMObject>();
    final bitmapPtr = bitmap == null ? nullptr : bitmap.ptr.ref.lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(8)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer bitmap,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer bitmap,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, bitmapPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return VideoFrame.fromPtr(retValuePtr);
  }

  VideoFrame? createWithDirect3D11Surface(IDirect3DSurface? surface) {
    final retValuePtr = calloc<COMObject>();
    final surfacePtr = surface == null ? nullptr : surface.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
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

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return VideoFrame.fromPtr(retValuePtr);
  }
}
