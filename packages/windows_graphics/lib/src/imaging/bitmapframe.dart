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
import 'ibitmapframe.dart';
import 'ibitmapframewithsoftwarebitmap.dart';
import 'imagestream.dart';
import 'pixeldataprovider.dart';
import 'softwarebitmap.dart';

/// Provides read access to data within a single frame.
class BitmapFrame extends IInspectable
    implements IBitmapFrame, IBitmapFrameWithSoftwareBitmap {
  BitmapFrame.fromPtr(super.ptr);

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

  late final _iBitmapFrameWithSoftwareBitmap =
      IBitmapFrameWithSoftwareBitmap.from(this);

  @override
  Future<SoftwareBitmap?> getSoftwareBitmapAsync() =>
      _iBitmapFrameWithSoftwareBitmap.getSoftwareBitmapAsync();

  @override
  Future<SoftwareBitmap?> getSoftwareBitmapConvertedAsync(
          BitmapPixelFormat pixelFormat, BitmapAlphaMode alphaMode) =>
      _iBitmapFrameWithSoftwareBitmap.getSoftwareBitmapConvertedAsync(
          pixelFormat, alphaMode);

  @override
  Future<SoftwareBitmap?> getSoftwareBitmapTransformedAsync(
          BitmapPixelFormat pixelFormat,
          BitmapAlphaMode alphaMode,
          BitmapTransform? transform,
          ExifOrientationMode exifOrientationMode,
          ColorManagementMode colorManagementMode) =>
      _iBitmapFrameWithSoftwareBitmap.getSoftwareBitmapTransformedAsync(
          pixelFormat,
          alphaMode,
          transform,
          exifOrientationMode,
          colorManagementMode);
}
