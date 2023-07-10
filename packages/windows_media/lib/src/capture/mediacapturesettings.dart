// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_graphics/windows_graphics.dart';

import '../audioprocessing.dart';
import 'imediacapturesettings.dart';
import 'imediacapturesettings2.dart';
import 'imediacapturesettings3.dart';
import 'mediacategory.dart';
import 'photocapturesource.dart';
import 'streamingcapturemode.dart';
import 'videodevicecharacteristic.dart';

/// Contains read-only configuration settings for the MediaCapture object.
class MediaCaptureSettings extends IInspectable
    implements
        IMediaCaptureSettings,
        IMediaCaptureSettings2,
        IMediaCaptureSettings3 {
  MediaCaptureSettings.fromPtr(super.ptr);

  late final _iMediaCaptureSettings = IMediaCaptureSettings.from(this);

  @override
  String get audioDeviceId => _iMediaCaptureSettings.audioDeviceId;

  @override
  String get videoDeviceId => _iMediaCaptureSettings.videoDeviceId;

  @override
  StreamingCaptureMode get streamingCaptureMode =>
      _iMediaCaptureSettings.streamingCaptureMode;

  @override
  PhotoCaptureSource get photoCaptureSource =>
      _iMediaCaptureSettings.photoCaptureSource;

  @override
  VideoDeviceCharacteristic get videoDeviceCharacteristic =>
      _iMediaCaptureSettings.videoDeviceCharacteristic;

  late final _iMediaCaptureSettings2 = IMediaCaptureSettings2.from(this);

  @override
  bool get concurrentRecordAndPhotoSupported =>
      _iMediaCaptureSettings2.concurrentRecordAndPhotoSupported;

  @override
  bool get concurrentRecordAndPhotoSequenceSupported =>
      _iMediaCaptureSettings2.concurrentRecordAndPhotoSequenceSupported;

  @override
  bool get cameraSoundRequiredForRegion =>
      _iMediaCaptureSettings2.cameraSoundRequiredForRegion;

  @override
  int? get horizontal35mmEquivalentFocalLength =>
      _iMediaCaptureSettings2.horizontal35mmEquivalentFocalLength;

  @override
  int? get pitchOffsetDegrees => _iMediaCaptureSettings2.pitchOffsetDegrees;

  @override
  int? get vertical35mmEquivalentFocalLength =>
      _iMediaCaptureSettings2.vertical35mmEquivalentFocalLength;

  @override
  MediaCategory get mediaCategory => _iMediaCaptureSettings2.mediaCategory;

  @override
  AudioProcessing get audioProcessing =>
      _iMediaCaptureSettings2.audioProcessing;

  late final _iMediaCaptureSettings3 = IMediaCaptureSettings3.from(this);

  @override
  IDirect3DDevice? get direct3D11Device =>
      _iMediaCaptureSettings3.direct3D11Device;
}
