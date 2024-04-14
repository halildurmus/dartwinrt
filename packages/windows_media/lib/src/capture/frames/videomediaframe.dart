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
import 'package:windows_graphics/windows_graphics.dart';

import '../../devices/core/cameraintrinsics.dart';
import '../../videoframe.dart';
import 'depthmediaframe.dart';
import 'infraredmediaframe.dart';
import 'ivideomediaframe.dart';
import 'mediaframereference.dart';
import 'videomediaframeformat.dart';

/// Represents a frame from a MediaFrameSource that provides data in a video
/// frame represented by a IDirect3DSurface or SoftwareBitmap.
class VideoMediaFrame extends IInspectable implements IVideoMediaFrame {
  VideoMediaFrame.fromPtr(super.ptr);

  late final _iVideoMediaFrame = IVideoMediaFrame.from(this);

  @override
  MediaFrameReference? get frameReference => _iVideoMediaFrame.frameReference;

  @override
  VideoMediaFrameFormat? get videoFormat => _iVideoMediaFrame.videoFormat;

  @override
  SoftwareBitmap? get softwareBitmap => _iVideoMediaFrame.softwareBitmap;

  @override
  IDirect3DSurface? get direct3DSurface => _iVideoMediaFrame.direct3DSurface;

  @override
  CameraIntrinsics? get cameraIntrinsics => _iVideoMediaFrame.cameraIntrinsics;

  @override
  InfraredMediaFrame? get infraredMediaFrame =>
      _iVideoMediaFrame.infraredMediaFrame;

  @override
  DepthMediaFrame? get depthMediaFrame => _iVideoMediaFrame.depthMediaFrame;

  @override
  VideoFrame? getVideoFrame() => _iVideoMediaFrame.getVideoFrame();
}
