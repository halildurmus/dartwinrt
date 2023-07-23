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

import 'iframeflashcapabilities.dart';

/// Provides information about the flash capabilities of the capture device
/// for frames in a variable photo sequences.
class FrameFlashCapabilities extends IInspectable
    implements IFrameFlashCapabilities {
  FrameFlashCapabilities.fromPtr(super.ptr);

  late final _iFrameFlashCapabilities = IFrameFlashCapabilities.from(this);

  @override
  bool get supported => _iFrameFlashCapabilities.supported;

  @override
  bool get redEyeReductionSupported =>
      _iFrameFlashCapabilities.redEyeReductionSupported;

  @override
  bool get powerSupported => _iFrameFlashCapabilities.powerSupported;
}
