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

import '../../devices/core/cameraintrinsics.dart';
import 'imediaframesource.dart';
import 'mediaframeformat.dart';
import 'mediaframesourcecontroller.dart';
import 'mediaframesourceinfo.dart';

/// Represents a source of media frames, such as a color or infrared camera.
class MediaFrameSource extends IInspectable implements IMediaFrameSource {
  MediaFrameSource.fromPtr(super.ptr);

  late final _iMediaFrameSource = IMediaFrameSource.from(this);

  @override
  MediaFrameSourceInfo? get info => _iMediaFrameSource.info;

  @override
  MediaFrameSourceController? get controller => _iMediaFrameSource.controller;

  @override
  List<MediaFrameFormat?>? get supportedFormats =>
      _iMediaFrameSource.supportedFormats;

  @override
  MediaFrameFormat? get currentFormat => _iMediaFrameSource.currentFormat;

  @override
  Future<void> setFormatAsync(MediaFrameFormat? format) =>
      _iMediaFrameSource.setFormatAsync(format);

  @override
  int add_FormatChanged(Pointer<COMObject> handler) =>
      _iMediaFrameSource.add_FormatChanged(handler);

  @override
  void remove_FormatChanged(int token) =>
      _iMediaFrameSource.remove_FormatChanged(token);

  @override
  CameraIntrinsics? tryGetCameraIntrinsics(MediaFrameFormat? format) =>
      _iMediaFrameSource.tryGetCameraIntrinsics(format);
}
