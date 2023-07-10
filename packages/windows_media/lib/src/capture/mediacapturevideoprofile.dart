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

import 'frames/mediaframesourceinfo.dart';
import 'imediacapturevideoprofile.dart';
import 'imediacapturevideoprofile2.dart';
import 'mediacapturevideoprofilemediadescription.dart';

/// Represents a video profile that indicates a configuration supported by
/// the video capture device.
class MediaCaptureVideoProfile extends IInspectable
    implements IMediaCaptureVideoProfile, IMediaCaptureVideoProfile2 {
  MediaCaptureVideoProfile.fromPtr(super.ptr);

  late final _iMediaCaptureVideoProfile = IMediaCaptureVideoProfile.from(this);

  @override
  String get id => _iMediaCaptureVideoProfile.id;

  @override
  String get videoDeviceId => _iMediaCaptureVideoProfile.videoDeviceId;

  @override
  List<MediaCaptureVideoProfileMediaDescription?>?
      get supportedPreviewMediaDescription =>
          _iMediaCaptureVideoProfile.supportedPreviewMediaDescription;

  @override
  List<MediaCaptureVideoProfileMediaDescription?>?
      get supportedRecordMediaDescription =>
          _iMediaCaptureVideoProfile.supportedRecordMediaDescription;

  @override
  List<MediaCaptureVideoProfileMediaDescription?>?
      get supportedPhotoMediaDescription =>
          _iMediaCaptureVideoProfile.supportedPhotoMediaDescription;

  @override
  List<MediaCaptureVideoProfile?> getConcurrency() =>
      _iMediaCaptureVideoProfile.getConcurrency();

  late final _iMediaCaptureVideoProfile2 =
      IMediaCaptureVideoProfile2.from(this);

  @override
  List<MediaFrameSourceInfo?>? get frameSourceInfos =>
      _iMediaCaptureVideoProfile2.frameSourceInfos;

  @override
  Map<Guid, Object?>? get properties => _iMediaCaptureVideoProfile2.properties;
}
