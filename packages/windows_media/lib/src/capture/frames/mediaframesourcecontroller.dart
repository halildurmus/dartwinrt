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

import '../../devices/audiodevicecontroller.dart';
import '../../devices/videodevicecontroller.dart';
import 'imediaframesourcecontroller.dart';
import 'imediaframesourcecontroller2.dart';
import 'imediaframesourcecontroller3.dart';
import 'mediaframesourcegetpropertyresult.dart';
import 'mediaframesourcesetpropertystatus.dart';

/// Allows you to get and set properties of a MediaFrameSource and to get a
/// VideoDeviceController, which provides camera controls such as exposure,
/// focus, and zoom.
class MediaFrameSourceController extends IInspectable
    implements
        IMediaFrameSourceController,
        IMediaFrameSourceController2,
        IMediaFrameSourceController3 {
  MediaFrameSourceController.fromPtr(super.ptr);

  late final _iMediaFrameSourceController =
      IMediaFrameSourceController.from(this);

  @override
  Future<MediaFrameSourceGetPropertyResult?> getPropertyAsync(
          String propertyId) =>
      _iMediaFrameSourceController.getPropertyAsync(propertyId);

  @override
  Future<MediaFrameSourceSetPropertyStatus> setPropertyAsync(
          String propertyId, Object? propertyValue) =>
      _iMediaFrameSourceController.setPropertyAsync(propertyId, propertyValue);

  @override
  VideoDeviceController? get videoDeviceController =>
      _iMediaFrameSourceController.videoDeviceController;

  late final _iMediaFrameSourceController2 =
      IMediaFrameSourceController2.from(this);

  @override
  Future<MediaFrameSourceGetPropertyResult?> getPropertyByExtendedIdAsync(
          List<int> extendedPropertyId, int? maxPropertyValueSize) =>
      _iMediaFrameSourceController2.getPropertyByExtendedIdAsync(
          extendedPropertyId, maxPropertyValueSize);

  @override
  Future<MediaFrameSourceSetPropertyStatus> setPropertyByExtendedIdAsync(
          List<int> extendedPropertyId, List<int> propertyValue) =>
      _iMediaFrameSourceController2.setPropertyByExtendedIdAsync(
          extendedPropertyId, propertyValue);

  late final _iMediaFrameSourceController3 =
      IMediaFrameSourceController3.from(this);

  @override
  AudioDeviceController? get audioDeviceController =>
      _iMediaFrameSourceController3.audioDeviceController;
}
