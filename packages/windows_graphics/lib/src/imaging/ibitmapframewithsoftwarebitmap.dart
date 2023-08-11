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

import 'bitmapalphamode.dart';
import 'bitmappixelformat.dart';
import 'bitmappropertiesview.dart';
import 'bitmaptransform.dart';
import 'colormanagementmode.dart';
import 'exiforientationmode.dart';
import 'ibitmapframe.dart';
import 'imagestream.dart';
import 'pixeldataprovider.dart';
import 'softwarebitmap.dart';

/// @nodoc
const IID_IBitmapFrameWithSoftwareBitmap =
    '{fe287c9a-420c-4963-87ad-691436e08383}';

class IBitmapFrameWithSoftwareBitmap extends IInspectable
    implements IBitmapFrame {
  // vtable begins at 6, is 3 entries long.
  IBitmapFrameWithSoftwareBitmap.fromPtr(super.ptr);

  factory IBitmapFrameWithSoftwareBitmap.from(IInspectable interface) =>
      interface.cast(IBitmapFrameWithSoftwareBitmap.fromPtr,
          IID_IBitmapFrameWithSoftwareBitmap);

  Future<SoftwareBitmap?> getSoftwareBitmapAsync() {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(value,
        creator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<SoftwareBitmap?> getSoftwareBitmapConvertedAsync(
      BitmapPixelFormat pixelFormat, BitmapAlphaMode alphaMode) {
    final value = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                Int32 pixelFormat,
                                Int32 alphaMode,
                                Pointer<COMObject> value)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int pixelFormat,
                        int alphaMode, Pointer<COMObject> value)>()(
            ptr.ref.lpVtbl, pixelFormat.value, alphaMode.value, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(value,
        creator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<SoftwareBitmap?> getSoftwareBitmapTransformedAsync(
      BitmapPixelFormat pixelFormat,
      BitmapAlphaMode alphaMode,
      BitmapTransform? transform,
      ExifOrientationMode exifOrientationMode,
      ColorManagementMode colorManagementMode) {
    final value = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Int32 pixelFormat,
                            Int32 alphaMode,
                            VTablePointer transform,
                            Int32 exifOrientationMode,
                            Int32 colorManagementMode,
                            Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int pixelFormat,
                    int alphaMode,
                    VTablePointer transform,
                    int exifOrientationMode,
                    int colorManagementMode,
                    Pointer<COMObject> value)>()(
        ptr.ref.lpVtbl,
        pixelFormat.value,
        alphaMode.value,
        transform.lpVtbl,
        exifOrientationMode.value,
        colorManagementMode.value,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<SoftwareBitmap?>.fromPtr(value,
        creator: SoftwareBitmap.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  late final _iBitmapFrame = IBitmapFrame.from(this);

  @override
  Future<ImageStream?> getThumbnailAsync() => _iBitmapFrame.getThumbnailAsync();

  @override
  BitmapPropertiesView? get bitmapProperties => _iBitmapFrame.bitmapProperties;

  @override
  BitmapPixelFormat get bitmapPixelFormat => _iBitmapFrame.bitmapPixelFormat;

  @override
  BitmapAlphaMode get bitmapAlphaMode => _iBitmapFrame.bitmapAlphaMode;

  @override
  double get dpiX => _iBitmapFrame.dpiX;

  @override
  double get dpiY => _iBitmapFrame.dpiY;

  @override
  int get pixelWidth => _iBitmapFrame.pixelWidth;

  @override
  int get pixelHeight => _iBitmapFrame.pixelHeight;

  @override
  int get orientedPixelWidth => _iBitmapFrame.orientedPixelWidth;

  @override
  int get orientedPixelHeight => _iBitmapFrame.orientedPixelHeight;

  @override
  Future<PixelDataProvider?> getPixelDataAsync() =>
      _iBitmapFrame.getPixelDataAsync();

  @override
  Future<PixelDataProvider?> getPixelDataTransformedAsync(
          BitmapPixelFormat pixelFormat,
          BitmapAlphaMode alphaMode,
          BitmapTransform? transform,
          ExifOrientationMode exifOrientationMode,
          ColorManagementMode colorManagementMode) =>
      _iBitmapFrame.getPixelDataTransformedAsync(pixelFormat, alphaMode,
          transform, exifOrientationMode, colorManagementMode);
}
