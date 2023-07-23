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
import 'ilowlagphotosequencecontrol.dart';

/// Provides functionality for managing the low shutter lag photo sequence
/// mode on the capture device.
class LowLagPhotoSequenceControl extends IInspectable
    implements ILowLagPhotoSequenceControl {
  LowLagPhotoSequenceControl.fromPtr(super.ptr);

  late final _iLowLagPhotoSequenceControl =
      ILowLagPhotoSequenceControl.from(this);

  @override
  bool get supported => _iLowLagPhotoSequenceControl.supported;

  @override
  int get maxPastPhotos => _iLowLagPhotoSequenceControl.maxPastPhotos;

  @override
  double get maxPhotosPerSecond =>
      _iLowLagPhotoSequenceControl.maxPhotosPerSecond;

  @override
  int get pastPhotoLimit => _iLowLagPhotoSequenceControl.pastPhotoLimit;

  @override
  set pastPhotoLimit(int value) =>
      _iLowLagPhotoSequenceControl.pastPhotoLimit = value;

  @override
  double get photosPerSecondLimit =>
      _iLowLagPhotoSequenceControl.photosPerSecondLimit;

  @override
  set photosPerSecondLimit(double value) =>
      _iLowLagPhotoSequenceControl.photosPerSecondLimit = value;

  @override
  MediaRatio? getHighestConcurrentFrameRate(
          IMediaEncodingProperties? captureProperties) =>
      _iLowLagPhotoSequenceControl
          .getHighestConcurrentFrameRate(captureProperties);

  @override
  MediaRatio? getCurrentFrameRate() =>
      _iLowLagPhotoSequenceControl.getCurrentFrameRate();

  @override
  bool get thumbnailEnabled => _iLowLagPhotoSequenceControl.thumbnailEnabled;

  @override
  set thumbnailEnabled(bool value) =>
      _iLowLagPhotoSequenceControl.thumbnailEnabled = value;

  @override
  MediaThumbnailFormat get thumbnailFormat =>
      _iLowLagPhotoSequenceControl.thumbnailFormat;

  @override
  set thumbnailFormat(MediaThumbnailFormat value) =>
      _iLowLagPhotoSequenceControl.thumbnailFormat = value;

  @override
  int get desiredThumbnailSize =>
      _iLowLagPhotoSequenceControl.desiredThumbnailSize;

  @override
  set desiredThumbnailSize(int value) =>
      _iLowLagPhotoSequenceControl.desiredThumbnailSize = value;

  @override
  int get hardwareAcceleratedThumbnailSupported =>
      _iLowLagPhotoSequenceControl.hardwareAcceleratedThumbnailSupported;
}
