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

import '../mediaproperties/mediapixelformat.dart';
import 'iphotoconfirmationcontrol.dart';

/// Provides functionality for controlling the photo confirmation settings on a
/// capture device.
class PhotoConfirmationControl extends IInspectable
    implements IPhotoConfirmationControl {
  PhotoConfirmationControl.fromPtr(super.ptr);

  late final _iPhotoConfirmationControl = IPhotoConfirmationControl.from(this);

  @override
  bool get supported => _iPhotoConfirmationControl.supported;

  @override
  bool get enabled => _iPhotoConfirmationControl.enabled;

  @override
  set enabled(bool value) => _iPhotoConfirmationControl.enabled = value;

  @override
  MediaPixelFormat get pixelFormat => _iPhotoConfirmationControl.pixelFormat;

  @override
  set pixelFormat(MediaPixelFormat format) =>
      _iPhotoConfirmationControl.pixelFormat = format;
}
