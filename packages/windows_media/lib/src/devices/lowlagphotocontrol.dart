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

import '../mediaproperties/imediaencodingproperties.dart';
import '../mediaproperties/mediaratio.dart';
import '../mediaproperties/mediathumbnailformat.dart';
import 'ilowlagphotocontrol.dart';

/// Provides functionality for managing the low shutter lag photo capture
/// mode on the capture device.
class LowLagPhotoControl extends IInspectable implements ILowLagPhotoControl {
  LowLagPhotoControl.fromPtr(super.ptr);

  late final _iLowLagPhotoControl = ILowLagPhotoControl.from(this);

  @override
  MediaRatio? getHighestConcurrentFrameRate(
          IMediaEncodingProperties? captureProperties) =>
      _iLowLagPhotoControl.getHighestConcurrentFrameRate(captureProperties);

  @override
  MediaRatio? getCurrentFrameRate() =>
      _iLowLagPhotoControl.getCurrentFrameRate();

  @override
  bool get thumbnailEnabled => _iLowLagPhotoControl.thumbnailEnabled;

  @override
  set thumbnailEnabled(bool value) =>
      _iLowLagPhotoControl.thumbnailEnabled = value;

  @override
  MediaThumbnailFormat get thumbnailFormat =>
      _iLowLagPhotoControl.thumbnailFormat;

  @override
  set thumbnailFormat(MediaThumbnailFormat value) =>
      _iLowLagPhotoControl.thumbnailFormat = value;

  @override
  int get desiredThumbnailSize => _iLowLagPhotoControl.desiredThumbnailSize;

  @override
  set desiredThumbnailSize(int value) =>
      _iLowLagPhotoControl.desiredThumbnailSize = value;

  @override
  int get hardwareAcceleratedThumbnailSupported =>
      _iLowLagPhotoControl.hardwareAcceleratedThumbnailSupported;
}
