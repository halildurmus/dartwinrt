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

import '../directx/direct3d11/idirect3dsurface.dart';
import 'bitmapalphamode.dart';
import 'bitmapbuffer.dart';
import 'bitmapbufferaccessmode.dart';
import 'bitmappixelformat.dart';
import 'isoftwarebitmap.dart';
import 'isoftwarebitmapfactory.dart';
import 'isoftwarebitmapstatics.dart';

/// Represents an uncompressed bitmap.
class SoftwareBitmap extends IInspectable
    implements ISoftwareBitmap, IClosable {
  SoftwareBitmap.fromPtr(super.ptr);

  static const _className = 'Windows.Graphics.Imaging.SoftwareBitmap';

  factory SoftwareBitmap.create(
          BitmapPixelFormat format, int width, int height) =>
      createActivationFactory(ISoftwareBitmapFactory.fromPtr, _className,
              IID_ISoftwareBitmapFactory)
          .create(format, width, height);

  factory SoftwareBitmap.createWithAlpha(BitmapPixelFormat format, int width,
          int height, BitmapAlphaMode alpha) =>
      createActivationFactory(ISoftwareBitmapFactory.fromPtr, _className,
              IID_ISoftwareBitmapFactory)
          .createWithAlpha(format, width, height, alpha);

  static SoftwareBitmap? copy(SoftwareBitmap? source) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .copy(source);

  static SoftwareBitmap? convert(
          SoftwareBitmap? source, BitmapPixelFormat format) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .convert(source, format);

  static SoftwareBitmap? convertWithAlpha(SoftwareBitmap? source,
          BitmapPixelFormat format, BitmapAlphaMode alpha) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .convertWithAlpha(source, format, alpha);

  static SoftwareBitmap? createCopyFromBuffer(
          IBuffer? source, BitmapPixelFormat format, int width, int height) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .createCopyFromBuffer(source, format, width, height);

  static SoftwareBitmap? createCopyWithAlphaFromBuffer(
          IBuffer? source,
          BitmapPixelFormat format,
          int width,
          int height,
          BitmapAlphaMode alpha) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .createCopyWithAlphaFromBuffer(source, format, width, height, alpha);

  static Future<SoftwareBitmap?> createCopyFromSurfaceAsync(
          IDirect3DSurface? surface) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .createCopyFromSurfaceAsync(surface);

  static Future<SoftwareBitmap?> createCopyWithAlphaFromSurfaceAsync(
          IDirect3DSurface? surface, BitmapAlphaMode alpha) =>
      createActivationFactory(ISoftwareBitmapStatics.fromPtr, _className,
              IID_ISoftwareBitmapStatics)
          .createCopyWithAlphaFromSurfaceAsync(surface, alpha);

  late final _iSoftwareBitmap = ISoftwareBitmap.from(this);

  @override
  BitmapPixelFormat get bitmapPixelFormat => _iSoftwareBitmap.bitmapPixelFormat;

  @override
  BitmapAlphaMode get bitmapAlphaMode => _iSoftwareBitmap.bitmapAlphaMode;

  @override
  int get pixelWidth => _iSoftwareBitmap.pixelWidth;

  @override
  int get pixelHeight => _iSoftwareBitmap.pixelHeight;

  @override
  bool get isReadOnly => _iSoftwareBitmap.isReadOnly;

  @override
  set dpiX(double value) => _iSoftwareBitmap.dpiX = value;

  @override
  double get dpiX => _iSoftwareBitmap.dpiX;

  @override
  set dpiY(double value) => _iSoftwareBitmap.dpiY = value;

  @override
  double get dpiY => _iSoftwareBitmap.dpiY;

  @override
  BitmapBuffer? lockBuffer(BitmapBufferAccessMode mode) =>
      _iSoftwareBitmap.lockBuffer(mode);

  @override
  void copyTo(SoftwareBitmap? bitmap) => _iSoftwareBitmap.copyTo(bitmap);

  @override
  void copyFromBuffer(IBuffer? buffer) =>
      _iSoftwareBitmap.copyFromBuffer(buffer);

  @override
  void copyToBuffer(IBuffer? buffer) => _iSoftwareBitmap.copyToBuffer(buffer);

  @override
  SoftwareBitmap? getReadOnlyView() => _iSoftwareBitmap.getReadOnlyView();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
