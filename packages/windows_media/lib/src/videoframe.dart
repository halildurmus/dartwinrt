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
import 'package:windows_graphics/windows_graphics.dart';

import 'imediaframe.dart';
import 'ivideoframe.dart';
import 'ivideoframe2.dart';
import 'ivideoframefactory.dart';
import 'ivideoframestatics.dart';

/// Represents a single frame of video data.
class VideoFrame extends IInspectable
    implements IVideoFrame, IMediaFrame, IClosable, IVideoFrame2 {
  VideoFrame.fromPtr(super.ptr);

  static const _className = 'Windows.Media.VideoFrame';

  factory VideoFrame.create(BitmapPixelFormat format, int width, int height) =>
      createActivationFactory(
              IVideoFrameFactory.fromPtr, _className, IID_IVideoFrameFactory)
          .create(format, width, height);

  factory VideoFrame.createWithAlpha(BitmapPixelFormat format, int width,
          int height, BitmapAlphaMode alpha) =>
      createActivationFactory(
              IVideoFrameFactory.fromPtr, _className, IID_IVideoFrameFactory)
          .createWithAlpha(format, width, height, alpha);

  static VideoFrame? createAsDirect3D11SurfaceBacked(
          DirectXPixelFormat format, int width, int height) =>
      createActivationFactory(
              IVideoFrameStatics.fromPtr, _className, IID_IVideoFrameStatics)
          .createAsDirect3D11SurfaceBacked(format, width, height);

  static VideoFrame? createAsDirect3D11SurfaceBackedWithDevice(
          DirectXPixelFormat format,
          int width,
          int height,
          IDirect3DDevice? device) =>
      createActivationFactory(
              IVideoFrameStatics.fromPtr, _className, IID_IVideoFrameStatics)
          .createAsDirect3D11SurfaceBackedWithDevice(
              format, width, height, device);

  static VideoFrame? createWithSoftwareBitmap(SoftwareBitmap? bitmap) =>
      createActivationFactory(
              IVideoFrameStatics.fromPtr, _className, IID_IVideoFrameStatics)
          .createWithSoftwareBitmap(bitmap);

  static VideoFrame? createWithDirect3D11Surface(IDirect3DSurface? surface) =>
      createActivationFactory(
              IVideoFrameStatics.fromPtr, _className, IID_IVideoFrameStatics)
          .createWithDirect3D11Surface(surface);

  late final _iVideoFrame = IVideoFrame.from(this);

  @override
  SoftwareBitmap? get softwareBitmap => _iVideoFrame.softwareBitmap;

  @override
  Future<void> copyToAsync(VideoFrame? frame) =>
      _iVideoFrame.copyToAsync(frame);

  @override
  IDirect3DSurface? get direct3DSurface => _iVideoFrame.direct3DSurface;

  late final _iMediaFrame = IMediaFrame.from(this);

  @override
  String get type => _iMediaFrame.type;

  @override
  bool get isReadOnly => _iMediaFrame.isReadOnly;

  @override
  set relativeTime(Duration? value) => _iMediaFrame.relativeTime = value;

  @override
  Duration? get relativeTime => _iMediaFrame.relativeTime;

  @override
  set systemRelativeTime(Duration? value) =>
      _iMediaFrame.systemRelativeTime = value;

  @override
  Duration? get systemRelativeTime => _iMediaFrame.systemRelativeTime;

  @override
  set duration(Duration? value) => _iMediaFrame.duration = value;

  @override
  Duration? get duration => _iMediaFrame.duration;

  @override
  set isDiscontinuous(bool value) => _iMediaFrame.isDiscontinuous = value;

  @override
  bool get isDiscontinuous => _iMediaFrame.isDiscontinuous;

  @override
  IPropertySet? get extendedProperties => _iMediaFrame.extendedProperties;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iVideoFrame2 = IVideoFrame2.from(this);

  @override
  Future<void> copyToWithBoundsAsync(VideoFrame? frame,
          BitmapBounds? sourceBounds, BitmapBounds? destinationBounds) =>
      _iVideoFrame2.copyToWithBoundsAsync(
          frame, sourceBounds, destinationBounds);
}
