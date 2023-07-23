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
import 'package:windows_storage/windows_storage.dart';

import 'bitmapalphamode.dart';
import 'bitmapcodecinformation.dart';
import 'bitmapframe.dart';
import 'bitmappixelformat.dart';
import 'bitmappropertiesview.dart';
import 'bitmaptransform.dart';
import 'colormanagementmode.dart';
import 'exiforientationmode.dart';
import 'ibitmapdecoder.dart';
import 'ibitmapdecoderstatics.dart';
import 'ibitmapdecoderstatics2.dart';
import 'ibitmapframe.dart';
import 'ibitmapframewithsoftwarebitmap.dart';
import 'imagestream.dart';
import 'pixeldataprovider.dart';
import 'softwarebitmap.dart';

/// Provides read access to bitmap container data as well as data from the
/// first frame.
class BitmapDecoder extends IInspectable
    implements IBitmapDecoder, IBitmapFrame, IBitmapFrameWithSoftwareBitmap {
  BitmapDecoder.fromPtr(super.ptr);

  static const _className = 'Windows.Graphics.Imaging.BitmapDecoder';

  static Guid get bmpDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .bmpDecoderId;

  static Guid get jpegDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .jpegDecoderId;

  static Guid get pngDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .pngDecoderId;

  static Guid get tiffDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .tiffDecoderId;

  static Guid get gifDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .gifDecoderId;

  static Guid get jpegXRDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .jpegXRDecoderId;

  static Guid get icoDecoderId => createActivationFactory(
          IBitmapDecoderStatics.fromPtr, _className, IID_IBitmapDecoderStatics)
      .icoDecoderId;

  static List<BitmapCodecInformation?> getDecoderInformationEnumerator() =>
      createActivationFactory(IBitmapDecoderStatics.fromPtr, _className,
              IID_IBitmapDecoderStatics)
          .getDecoderInformationEnumerator();

  static Future<BitmapDecoder?> createAsync(IRandomAccessStream? stream) =>
      createActivationFactory(IBitmapDecoderStatics.fromPtr, _className,
              IID_IBitmapDecoderStatics)
          .createAsync(stream);

  static Future<BitmapDecoder?> createWithIdAsync(
          Guid decoderId, IRandomAccessStream? stream) =>
      createActivationFactory(IBitmapDecoderStatics.fromPtr, _className,
              IID_IBitmapDecoderStatics)
          .createWithIdAsync(decoderId, stream);

  static Guid get heifDecoderId => createActivationFactory(
          IBitmapDecoderStatics2.fromPtr,
          _className,
          IID_IBitmapDecoderStatics2)
      .heifDecoderId;

  static Guid get webpDecoderId => createActivationFactory(
          IBitmapDecoderStatics2.fromPtr,
          _className,
          IID_IBitmapDecoderStatics2)
      .webpDecoderId;

  late final _iBitmapDecoder = IBitmapDecoder.from(this);

  @override
  BitmapPropertiesView? get bitmapContainerProperties =>
      _iBitmapDecoder.bitmapContainerProperties;

  @override
  BitmapCodecInformation? get decoderInformation =>
      _iBitmapDecoder.decoderInformation;

  @override
  int get frameCount => _iBitmapDecoder.frameCount;

  @override
  Future<ImageStream?> getPreviewAsync() => _iBitmapDecoder.getPreviewAsync();

  @override
  Future<BitmapFrame?> getFrameAsync(int frameIndex) =>
      _iBitmapDecoder.getFrameAsync(frameIndex);

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
