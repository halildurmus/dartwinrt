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

/// @nodoc
const IID_IImageFeatureDescriptor = '{365585a5-171a-4a2a-985f-265159d3895a}';

class IImageFeatureDescriptor extends IInspectable {
  IImageFeatureDescriptor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IImageFeatureDescriptorVtbl>().ref;

  final _IImageFeatureDescriptorVtbl _vtable;

  factory IImageFeatureDescriptor.from(IInspectable interface) => interface
      .cast(IImageFeatureDescriptor.fromPtr, IID_IImageFeatureDescriptor);

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

  int get width {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Width.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get height {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Height.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IImageFeatureDescriptorVtbl extends Struct {
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
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Width;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Height;
}
