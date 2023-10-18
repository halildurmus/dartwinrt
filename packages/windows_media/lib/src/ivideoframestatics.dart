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
import 'package:windows_graphics/windows_graphics.dart';

import 'videoframe.dart';

/// @nodoc
const IID_IVideoFrameStatics = '{ab2a556f-6111-4b33-8ec3-2b209a02e17a}';

class IVideoFrameStatics extends IInspectable {
  IVideoFrameStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoFrameStaticsVtbl>().ref;

  final _IVideoFrameStaticsVtbl _vtable;

  factory IVideoFrameStatics.from(IInspectable interface) =>
      interface.cast(IVideoFrameStatics.fromPtr, IID_IVideoFrameStatics);

  VideoFrame? createAsDirect3D11SurfaceBacked(
      DirectXPixelFormat format, int width, int height) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateAsDirect3D11SurfaceBacked.asFunction<
            int Function(VTablePointer lpVtbl, int format, int width,
                int height, Pointer<COMObject> result)>()(
        lpVtbl, format.value, width, height, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return VideoFrame.fromPtr(result);
  }

  VideoFrame? createAsDirect3D11SurfaceBackedWithDevice(
      DirectXPixelFormat format,
      int width,
      int height,
      IDirect3DDevice? device) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateAsDirect3D11SurfaceBackedWithDevice.asFunction<
            int Function(VTablePointer lpVtbl, int format, int width,
                int height, VTablePointer device, Pointer<COMObject> result)>()(
        lpVtbl, format.value, width, height, device.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return VideoFrame.fromPtr(result);
  }

  VideoFrame? createWithSoftwareBitmap(SoftwareBitmap? bitmap) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateWithSoftwareBitmap.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer bitmap,
            Pointer<COMObject> result)>()(lpVtbl, bitmap.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return VideoFrame.fromPtr(result);
  }

  VideoFrame? createWithDirect3D11Surface(IDirect3DSurface? surface) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateWithDirect3D11Surface.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer surface,
            Pointer<COMObject> result)>()(lpVtbl, surface.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return VideoFrame.fromPtr(result);
  }
}

final class _IVideoFrameStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 format,
              Int32 width,
              Int32 height,
              Pointer<COMObject> result)>> CreateAsDirect3D11SurfaceBacked;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  Int32 format,
                  Int32 width,
                  Int32 height,
                  VTablePointer device,
                  Pointer<COMObject> result)>>
      CreateAsDirect3D11SurfaceBackedWithDevice;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer bitmap,
              Pointer<COMObject> result)>> CreateWithSoftwareBitmap;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer surface,
              Pointer<COMObject> result)>> CreateWithDirect3D11Surface;
}
