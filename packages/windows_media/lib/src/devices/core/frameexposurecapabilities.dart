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

import 'iframeexposurecapabilities.dart';

/// Provides information about the exposure time capabilities of the capture
/// device for frames in a variable photo sequences.
class FrameExposureCapabilities extends IInspectable
    implements IFrameExposureCapabilities {
  FrameExposureCapabilities.fromPtr(super.ptr);

  late final _iFrameExposureCapabilities =
      IFrameExposureCapabilities.from(this);

  @override
  bool get supported => _iFrameExposureCapabilities.supported;

  @override
  Duration get min => _iFrameExposureCapabilities.min;

  @override
  Duration get max => _iFrameExposureCapabilities.max;

  @override
  Duration get step => _iFrameExposureCapabilities.step;
}
