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

import '../capture/mediastreamtype.dart';
import '../mediaproperties/imediaencodingproperties.dart';
import 'iaudiodevicecontroller.dart';
import 'imediadevicecontroller.dart';

/// Controls device settings on the microphone.
class AudioDeviceController extends IInspectable
    implements IAudioDeviceController, IMediaDeviceController {
  AudioDeviceController.fromPtr(super.ptr);

  late final _iAudioDeviceController = IAudioDeviceController.from(this);

  @override
  set muted(bool value) => _iAudioDeviceController.muted = value;

  @override
  bool get muted => _iAudioDeviceController.muted;

  @override
  set volumePercent(double value) =>
      _iAudioDeviceController.volumePercent = value;

  @override
  double get volumePercent => _iAudioDeviceController.volumePercent;

  late final _iMediaDeviceController = IMediaDeviceController.from(this);

  @override
  List<IMediaEncodingProperties?> getAvailableMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController
          .getAvailableMediaStreamProperties(mediaStreamType);

  @override
  IMediaEncodingProperties? getMediaStreamProperties(
          MediaStreamType mediaStreamType) =>
      _iMediaDeviceController.getMediaStreamProperties(mediaStreamType);

  @override
  Future<void> setMediaStreamPropertiesAsync(MediaStreamType mediaStreamType,
          IMediaEncodingProperties? mediaEncodingProperties) =>
      _iMediaDeviceController.setMediaStreamPropertiesAsync(
          mediaStreamType, mediaEncodingProperties);
}
