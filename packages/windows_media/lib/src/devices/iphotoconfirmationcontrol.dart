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

import '../mediaproperties/mediapixelformat.dart';

/// @nodoc
const IID_IPhotoConfirmationControl = '{c8f3f363-ff5e-4582-a9a8-0550f85a4a76}';

class IPhotoConfirmationControl extends IInspectable {
  IPhotoConfirmationControl.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPhotoConfirmationControlVtbl>().ref;

  final _IPhotoConfirmationControlVtbl _vtable;

  factory IPhotoConfirmationControl.from(IInspectable interface) => interface
      .cast(IPhotoConfirmationControl.fromPtr, IID_IPhotoConfirmationControl);

  bool get supported {
    final pbSupported = calloc<Bool>();

    try {
      final hr = _vtable.get_Supported.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<Bool> pbSupported)>()(
          lpVtbl, pbSupported);

      if (FAILED(hr)) throwWindowsException(hr);

      return pbSupported.value;
    } finally {
      free(pbSupported);
    }
  }

  bool get enabled {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Enabled.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set enabled(bool value) {
    final hr = _vtable.put_Enabled
            .asFunction<int Function(VTablePointer lpVtbl, bool value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  MediaPixelFormat get pixelFormat {
    final format = calloc<Int32>();

    try {
      final hr = _vtable.get_PixelFormat.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> format)>()(lpVtbl, format);

      if (FAILED(hr)) throwWindowsException(hr);

      return MediaPixelFormat.from(format.value);
    } finally {
      free(format);
    }
  }

  set pixelFormat(MediaPixelFormat format) {
    final hr = _vtable.put_PixelFormat
            .asFunction<int Function(VTablePointer lpVtbl, int format)>()(
        lpVtbl, format.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IPhotoConfirmationControlVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<Bool> pbSupported)>> get_Supported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Enabled;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Bool value)>>
      put_Enabled;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> format)>>
      get_PixelFormat;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 format)>>
      put_PixelFormat;
}
