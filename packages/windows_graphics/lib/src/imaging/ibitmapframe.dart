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

import 'bitmapalphamode.dart';
import 'bitmappixelformat.dart';
import 'bitmappropertiesview.dart';
import 'bitmaptransform.dart';
import 'colormanagementmode.dart';
import 'exiforientationmode.dart';
import 'imagestream.dart';
import 'pixeldataprovider.dart';

/// @nodoc
const IID_IBitmapFrame = '{72a49a1c-8081-438d-91bc-94ecfc8185c6}';

class IBitmapFrame extends IInspectable {
  IBitmapFrame.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IBitmapFrameVtbl>().ref;

  final _IBitmapFrameVtbl _vtable;

  factory IBitmapFrame.from(IInspectable interface) =>
      interface.cast(IBitmapFrame.fromPtr, IID_IBitmapFrame);

  Future<ImageStream?> getThumbnailAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.GetThumbnailAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<ImageStream?>.fromPtr(asyncInfo,
        tResultObjectCreator: ImageStream.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  BitmapPropertiesView? get bitmapProperties {
    final value = calloc<COMObject>();

    final hr = _vtable.get_BitmapProperties.asFunction<
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

    return BitmapPropertiesView.fromPtr(value);
  }

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

  double get dpiX {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_DpiX.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  double get dpiY {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_DpiY.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get pixelWidth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_PixelWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get pixelHeight {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_PixelHeight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get orientedPixelWidth {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_OrientedPixelWidth.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get orientedPixelHeight {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_OrientedPixelHeight.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Future<PixelDataProvider?> getPixelDataAsync() {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.GetPixelDataAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>()(
        lpVtbl, asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PixelDataProvider?>.fromPtr(
        asyncInfo,
        tResultObjectCreator: PixelDataProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<PixelDataProvider?> getPixelDataTransformedAsync(
      BitmapPixelFormat pixelFormat,
      BitmapAlphaMode alphaMode,
      BitmapTransform? transform,
      ExifOrientationMode exifOrientationMode,
      ColorManagementMode colorManagementMode) {
    final asyncInfo = calloc<COMObject>();

    final hr = _vtable.GetPixelDataTransformedAsync.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int pixelFormat,
                int alphaMode,
                VTablePointer transform,
                int exifOrientationMode,
                int colorManagementMode,
                Pointer<COMObject> asyncInfo)>()(
        lpVtbl,
        pixelFormat.value,
        alphaMode.value,
        transform.lpVtbl,
        exifOrientationMode.value,
        colorManagementMode.value,
        asyncInfo);

    if (FAILED(hr)) {
      free(asyncInfo);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<PixelDataProvider?>.fromPtr(
        asyncInfo,
        tResultObjectCreator: PixelDataProvider.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }
}

final class _IBitmapFrameVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      GetThumbnailAsync;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_BitmapProperties;
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
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_DpiX;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_DpiY;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_PixelWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_PixelHeight;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_OrientedPixelWidth;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_OrientedPixelHeight;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> asyncInfo)>>
      GetPixelDataAsync;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Int32 pixelFormat,
              Int32 alphaMode,
              VTablePointer transform,
              Int32 exifOrientationMode,
              Int32 colorManagementMode,
              Pointer<COMObject> asyncInfo)>> GetPixelDataTransformedAsync;
}
