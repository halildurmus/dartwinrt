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
import 'package:windows_graphics/windows_graphics.dart';

import '../../devices/core/cameraintrinsics.dart';
import '../../videoframe.dart';
import 'depthmediaframe.dart';
import 'infraredmediaframe.dart';
import 'mediaframereference.dart';
import 'videomediaframeformat.dart';

/// @nodoc
const IID_IVideoMediaFrame = '{00dd4ccb-32bd-4fe1-a013-7cc13cf5dbcf}';

class IVideoMediaFrame extends IInspectable {
  IVideoMediaFrame.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoMediaFrameVtbl>().ref;

  final _IVideoMediaFrameVtbl _vtable;

  factory IVideoMediaFrame.from(IInspectable interface) =>
      interface.cast(IVideoMediaFrame.fromPtr, IID_IVideoMediaFrame);

  MediaFrameReference? get frameReference {
    final value = calloc<COMObject>();

    final hr = _vtable.get_FrameReference.asFunction<
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

    return MediaFrameReference.fromPtr(value);
  }

  VideoMediaFrameFormat? get videoFormat {
    final value = calloc<COMObject>();

    final hr = _vtable.get_VideoFormat.asFunction<
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

    return VideoMediaFrameFormat.fromPtr(value);
  }

  SoftwareBitmap? get softwareBitmap {
    final value = calloc<COMObject>();

    final hr = _vtable.get_SoftwareBitmap.asFunction<
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

  IDirect3DSurface? get direct3DSurface {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Direct3DSurface.asFunction<
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

    return IDirect3DSurface.fromPtr(value);
  }

  CameraIntrinsics? get cameraIntrinsics {
    final value = calloc<COMObject>();

    final hr = _vtable.get_CameraIntrinsics.asFunction<
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

    return CameraIntrinsics.fromPtr(value);
  }

  InfraredMediaFrame? get infraredMediaFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_InfraredMediaFrame.asFunction<
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

    return InfraredMediaFrame.fromPtr(value);
  }

  DepthMediaFrame? get depthMediaFrame {
    final value = calloc<COMObject>();

    final hr = _vtable.get_DepthMediaFrame.asFunction<
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

    return DepthMediaFrame.fromPtr(value);
  }

  VideoFrame? getVideoFrame() {
    final value = calloc<COMObject>();

    final hr = _vtable.GetVideoFrame.asFunction<
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

    return VideoFrame.fromPtr(value);
  }
}

final class _IVideoMediaFrameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_FrameReference;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_VideoFormat;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_SoftwareBitmap;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Direct3DSurface;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_CameraIntrinsics;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_InfraredMediaFrame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_DepthMediaFrame;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      GetVideoFrame;
}
