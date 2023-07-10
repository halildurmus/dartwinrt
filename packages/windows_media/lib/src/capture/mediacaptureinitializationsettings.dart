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
import 'package:windows_security/windows_security.dart';

import '../audioprocessing.dart';
import '../core/imediasource.dart';
import 'frames/mediaframesourcegroup.dart';
import 'imediacaptureinitializationsettings.dart';
import 'imediacaptureinitializationsettings2.dart';
import 'imediacaptureinitializationsettings3.dart';
import 'imediacaptureinitializationsettings4.dart';
import 'imediacaptureinitializationsettings5.dart';
import 'imediacaptureinitializationsettings6.dart';
import 'imediacaptureinitializationsettings7.dart';
import 'mediacapturememorypreference.dart';
import 'mediacapturesharingmode.dart';
import 'mediacapturevideoprofile.dart';
import 'mediacapturevideoprofilemediadescription.dart';
import 'mediacategory.dart';
import 'photocapturesource.dart';
import 'streamingcapturemode.dart';

/// Contains initialization settings for the MediaCapture object which are
/// passed to the MediaCapture.InitializeAsync method.
class MediaCaptureInitializationSettings extends IInspectable
    implements
        IMediaCaptureInitializationSettings,
        IMediaCaptureInitializationSettings2,
        IMediaCaptureInitializationSettings3,
        IMediaCaptureInitializationSettings4,
        IMediaCaptureInitializationSettings5,
        IMediaCaptureInitializationSettings6,
        IMediaCaptureInitializationSettings7 {
  MediaCaptureInitializationSettings() : super(activateClass(_className));
  MediaCaptureInitializationSettings.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.Capture.MediaCaptureInitializationSettings';

  late final _iMediaCaptureInitializationSettings =
      IMediaCaptureInitializationSettings.from(this);

  @override
  set audioDeviceId(String value) =>
      _iMediaCaptureInitializationSettings.audioDeviceId = value;

  @override
  String get audioDeviceId =>
      _iMediaCaptureInitializationSettings.audioDeviceId;

  @override
  set videoDeviceId(String value) =>
      _iMediaCaptureInitializationSettings.videoDeviceId = value;

  @override
  String get videoDeviceId =>
      _iMediaCaptureInitializationSettings.videoDeviceId;

  @override
  set streamingCaptureMode(StreamingCaptureMode value) =>
      _iMediaCaptureInitializationSettings.streamingCaptureMode = value;

  @override
  StreamingCaptureMode get streamingCaptureMode =>
      _iMediaCaptureInitializationSettings.streamingCaptureMode;

  @override
  set photoCaptureSource(PhotoCaptureSource value) =>
      _iMediaCaptureInitializationSettings.photoCaptureSource = value;

  @override
  PhotoCaptureSource get photoCaptureSource =>
      _iMediaCaptureInitializationSettings.photoCaptureSource;

  late final _iMediaCaptureInitializationSettings2 =
      IMediaCaptureInitializationSettings2.from(this);

  @override
  set mediaCategory(MediaCategory value) =>
      _iMediaCaptureInitializationSettings2.mediaCategory = value;

  @override
  MediaCategory get mediaCategory =>
      _iMediaCaptureInitializationSettings2.mediaCategory;

  @override
  set audioProcessing(AudioProcessing value) =>
      _iMediaCaptureInitializationSettings2.audioProcessing = value;

  @override
  AudioProcessing get audioProcessing =>
      _iMediaCaptureInitializationSettings2.audioProcessing;

  late final _iMediaCaptureInitializationSettings3 =
      IMediaCaptureInitializationSettings3.from(this);

  @override
  set audioSource(IMediaSource? value) =>
      _iMediaCaptureInitializationSettings3.audioSource = value;

  @override
  IMediaSource? get audioSource =>
      _iMediaCaptureInitializationSettings3.audioSource;

  @override
  set videoSource(IMediaSource? value) =>
      _iMediaCaptureInitializationSettings3.videoSource = value;

  @override
  IMediaSource? get videoSource =>
      _iMediaCaptureInitializationSettings3.videoSource;

  late final _iMediaCaptureInitializationSettings4 =
      IMediaCaptureInitializationSettings4.from(this);

  @override
  MediaCaptureVideoProfile? get videoProfile =>
      _iMediaCaptureInitializationSettings4.videoProfile;

  @override
  set videoProfile(MediaCaptureVideoProfile? value) =>
      _iMediaCaptureInitializationSettings4.videoProfile = value;

  @override
  MediaCaptureVideoProfileMediaDescription? get previewMediaDescription =>
      _iMediaCaptureInitializationSettings4.previewMediaDescription;

  @override
  set previewMediaDescription(
          MediaCaptureVideoProfileMediaDescription? value) =>
      _iMediaCaptureInitializationSettings4.previewMediaDescription = value;

  @override
  MediaCaptureVideoProfileMediaDescription? get recordMediaDescription =>
      _iMediaCaptureInitializationSettings4.recordMediaDescription;

  @override
  set recordMediaDescription(MediaCaptureVideoProfileMediaDescription? value) =>
      _iMediaCaptureInitializationSettings4.recordMediaDescription = value;

  @override
  MediaCaptureVideoProfileMediaDescription? get photoMediaDescription =>
      _iMediaCaptureInitializationSettings4.photoMediaDescription;

  @override
  set photoMediaDescription(MediaCaptureVideoProfileMediaDescription? value) =>
      _iMediaCaptureInitializationSettings4.photoMediaDescription = value;

  late final _iMediaCaptureInitializationSettings5 =
      IMediaCaptureInitializationSettings5.from(this);

  @override
  MediaFrameSourceGroup? get sourceGroup =>
      _iMediaCaptureInitializationSettings5.sourceGroup;

  @override
  set sourceGroup(MediaFrameSourceGroup? value) =>
      _iMediaCaptureInitializationSettings5.sourceGroup = value;

  @override
  MediaCaptureSharingMode get sharingMode =>
      _iMediaCaptureInitializationSettings5.sharingMode;

  @override
  set sharingMode(MediaCaptureSharingMode value) =>
      _iMediaCaptureInitializationSettings5.sharingMode = value;

  @override
  MediaCaptureMemoryPreference get memoryPreference =>
      _iMediaCaptureInitializationSettings5.memoryPreference;

  @override
  set memoryPreference(MediaCaptureMemoryPreference value) =>
      _iMediaCaptureInitializationSettings5.memoryPreference = value;

  late final _iMediaCaptureInitializationSettings6 =
      IMediaCaptureInitializationSettings6.from(this);

  @override
  bool get alwaysPlaySystemShutterSound =>
      _iMediaCaptureInitializationSettings6.alwaysPlaySystemShutterSound;

  @override
  set alwaysPlaySystemShutterSound(bool value) =>
      _iMediaCaptureInitializationSettings6.alwaysPlaySystemShutterSound =
          value;

  late final _iMediaCaptureInitializationSettings7 =
      IMediaCaptureInitializationSettings7.from(this);

  @override
  PasswordCredential? get deviceUriPasswordCredential =>
      _iMediaCaptureInitializationSettings7.deviceUriPasswordCredential;

  @override
  set deviceUriPasswordCredential(PasswordCredential? value) =>
      _iMediaCaptureInitializationSettings7.deviceUriPasswordCredential = value;

  @override
  Uri? get deviceUri => _iMediaCaptureInitializationSettings7.deviceUri;

  @override
  set deviceUri(Uri? value) =>
      _iMediaCaptureInitializationSettings7.deviceUri = value;
}
