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

import 'imediacapturevideoprofilemediadescription.dart';
import 'imediacapturevideoprofilemediadescription2.dart';

/// Represents a description of media that is supported by a video profile.
class MediaCaptureVideoProfileMediaDescription extends IInspectable
    implements
        IMediaCaptureVideoProfileMediaDescription,
        IMediaCaptureVideoProfileMediaDescription2 {
  MediaCaptureVideoProfileMediaDescription.fromPtr(super.ptr);

  late final _iMediaCaptureVideoProfileMediaDescription =
      IMediaCaptureVideoProfileMediaDescription.from(this);

  @override
  int get width => _iMediaCaptureVideoProfileMediaDescription.width;

  @override
  int get height => _iMediaCaptureVideoProfileMediaDescription.height;

  @override
  double get frameRate => _iMediaCaptureVideoProfileMediaDescription.frameRate;

  @Deprecated(
      "IsVariablePhotoSequenceSupported might not be available in the next major update following Windows 10, version 1709")
  @override
  bool get isVariablePhotoSequenceSupported =>
      _iMediaCaptureVideoProfileMediaDescription
          .isVariablePhotoSequenceSupported;

  @Deprecated(
      "IsHdrVideoSupported might not be available in the next major update following Windows 10, version 1709")
  @override
  bool get isHdrVideoSupported =>
      _iMediaCaptureVideoProfileMediaDescription.isHdrVideoSupported;

  late final _iMediaCaptureVideoProfileMediaDescription2 =
      IMediaCaptureVideoProfileMediaDescription2.from(this);

  @override
  String get subtype => _iMediaCaptureVideoProfileMediaDescription2.subtype;

  @override
  Map<Guid, Object?>? get properties =>
      _iMediaCaptureVideoProfileMediaDescription2.properties;
}
