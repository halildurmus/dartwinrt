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

import 'videoframe.dart';

/// @nodoc
const IID_IVideoFrameFactory = '{014b6d69-2228-4c92-92ff-50c380d3e776}';

class IVideoFrameFactory extends IInspectable {
  IVideoFrameFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IVideoFrameFactoryVtbl>().ref;

  final _IVideoFrameFactoryVtbl _vtable;

  factory IVideoFrameFactory.from(IInspectable interface) =>
      interface.cast(IVideoFrameFactory.fromPtr, IID_IVideoFrameFactory);

  VideoFrame create(BitmapPixelFormat format, int width, int height) {
    final value = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, int format, int width,
                int height, Pointer<COMObject> value)>()(
        lpVtbl, format.value, width, height, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return VideoFrame.fromPtr(value);
  }

  VideoFrame createWithAlpha(
      BitmapPixelFormat format, int width, int height, BitmapAlphaMode alpha) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateWithAlpha.asFunction<
            int Function(VTablePointer lpVtbl, int format, int width,
                int height, int alpha, Pointer<COMObject> value)>()(
        lpVtbl, format.value, width, height, alpha.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return VideoFrame.fromPtr(value);
  }
}

final class _IVideoFrameFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, Int32 format, Int32 width,
              Int32 height, Pointer<COMObject> value)>> Create;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 format,
              Int32 width,
              Int32 height,
              Int32 alpha,
              Pointer<COMObject> value)>> CreateWithAlpha;
}
