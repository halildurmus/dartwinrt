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

/// @nodoc
const IID_IPdfPageDimensions = '{22170471-313e-44e8-835d-63a3e7624a10}';

class IPdfPageDimensions extends IInspectable {
  IPdfPageDimensions.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPdfPageDimensionsVtbl>().ref;

  final _IPdfPageDimensionsVtbl _vtable;

  factory IPdfPageDimensions.from(IInspectable interface) =>
      interface.cast(IPdfPageDimensions.fromPtr, IID_IPdfPageDimensions);

  Rect get mediaBox {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_MediaBox.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect get cropBox {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_CropBox.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect get bleedBox {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_BleedBox.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect get trimBox {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_TrimBox.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  Rect get artBox {
    final value = calloc<NativeRect>();

    try {
      final hr = _vtable.get_ArtBox.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeRect> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }
}

final class _IPdfPageDimensionsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_MediaBox;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_CropBox;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_BleedBox;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_TrimBox;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeRect> value)>> get_ArtBox;
}
