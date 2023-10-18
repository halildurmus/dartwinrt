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

/// @nodoc
const IID_IMediaCaptureVideoProfileMediaDescription =
    '{8012afef-b691-49ff-83f2-c1e76eaaea1b}';

class IMediaCaptureVideoProfileMediaDescription extends IInspectable {
  IMediaCaptureVideoProfileMediaDescription.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_IMediaCaptureVideoProfileMediaDescriptionVtbl>()
            .ref;

  final _IMediaCaptureVideoProfileMediaDescriptionVtbl _vtable;

  factory IMediaCaptureVideoProfileMediaDescription.from(
          IInspectable interface) =>
      interface.cast(IMediaCaptureVideoProfileMediaDescription.fromPtr,
          IID_IMediaCaptureVideoProfileMediaDescription);

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

  double get frameRate {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_FrameRate.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  @Deprecated(
      "IsVariablePhotoSequenceSupported might not be available in the next major update following Windows 10, version 1709")
  bool get isVariablePhotoSequenceSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsVariablePhotoSequenceSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  @Deprecated(
      "IsHdrVideoSupported might not be available in the next major update following Windows 10, version 1709")
  bool get isHdrVideoSupported {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_IsHdrVideoSupported.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IMediaCaptureVideoProfileMediaDescriptionVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Width;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Height;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_FrameRate;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsVariablePhotoSequenceSupported;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_IsHdrVideoSupported;
}
