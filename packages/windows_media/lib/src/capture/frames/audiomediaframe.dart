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

import '../../audioframe.dart';
import '../../mediaproperties/audioencodingproperties.dart';
import 'iaudiomediaframe.dart';
import 'mediaframereference.dart';

/// Represents a frame of audio data retreived from a MediaFrameSource.
class AudioMediaFrame extends IInspectable implements IAudioMediaFrame {
  AudioMediaFrame.fromPtr(super.ptr);

  late final _iAudioMediaFrame = IAudioMediaFrame.from(this);

  @override
  MediaFrameReference? get frameReference => _iAudioMediaFrame.frameReference;

  @override
  AudioEncodingProperties? get audioEncodingProperties =>
      _iAudioMediaFrame.audioEncodingProperties;

  @override
  AudioFrame? getAudioFrame() => _iAudioMediaFrame.getAudioFrame();
}
