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

import 'pdfpagedimensions.dart';
import 'pdfpagerenderoptions.dart';
import 'pdfpagerotation.dart';

/// @nodoc
const IID_IPdfPage = '{9db4b0c8-5320-4cfc-ad76-493fdad0e594}';

class IPdfPage extends IInspectable {
  IPdfPage.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPdfPageVtbl>().ref;

  final _IPdfPageVtbl _vtable;

  factory IPdfPage.from(IInspectable interface) =>
      interface.cast(IPdfPage.fromPtr, IID_IPdfPage);

  Future<void> renderToStreamAsync(IRandomAccessStream? outputStream) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.RenderToStreamAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer outputStream,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl, outputStream.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> renderWithOptionsToStreamAsync(
      IRandomAccessStream? outputStream, PdfPageRenderOptions? options) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.RenderWithOptionsToStreamAsync.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer outputStream,
                VTablePointer options, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, outputStream.lpVtbl, options.lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  Future<void> preparePageAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.PreparePageAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(asyncInfo).toFuture();
  }

  int get index {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_Index.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Size get size {
    final value = calloc<NativeSize>();

    try {
      final hr = _vtable.get_Size.asFunction<
              int Function(VTablePointer lpVtbl, Pointer<NativeSize> value)>()(
          lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDart();
    } finally {
      free(value);
    }
  }

  PdfPageDimensions? get dimensions {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Dimensions.asFunction<
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

    return PdfPageDimensions.fromPtr(value);
  }

  PdfPageRotation get rotation {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Rotation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return PdfPageRotation.from(value.value);
    } finally {
      free(value);
    }
  }

  double get preferredZoom {
    final value = calloc<Float>();

    try {
      final hr = _vtable.get_PreferredZoom.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Float> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }
}

final class _IPdfPageVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer outputStream,
              Pointer<COMObject> asyncInfo)>> RenderToStreamAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer outputStream,
              VTablePointer options,
              Pointer<COMObject> asyncInfo)>> RenderWithOptionsToStreamAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      PreparePageAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_Index;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<NativeSize> value)>> get_Size;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Dimensions;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Rotation;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Float> value)>>
      get_PreferredZoom;
}
