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

import '../devices/mediacapturepausebehavior.dart';
import 'ilowlagmediarecording.dart';
import 'ilowlagmediarecording2.dart';
import 'ilowlagmediarecording3.dart';
import 'mediacapturepauseresult.dart';
import 'mediacapturestopresult.dart';

/// Provides methods for taking a low lag media recording.
class LowLagMediaRecording extends IInspectable
    implements
        ILowLagMediaRecording,
        ILowLagMediaRecording2,
        ILowLagMediaRecording3 {
  LowLagMediaRecording.fromPtr(super.ptr);

  late final _iLowLagMediaRecording = ILowLagMediaRecording.from(this);

  @override
  Future<void> startAsync() => _iLowLagMediaRecording.startAsync();

  @override
  Future<void> stopAsync() => _iLowLagMediaRecording.stopAsync();

  @override
  Future<void> finishAsync() => _iLowLagMediaRecording.finishAsync();

  late final _iLowLagMediaRecording2 = ILowLagMediaRecording2.from(this);

  @override
  Future<void> pauseAsync(MediaCapturePauseBehavior behavior) =>
      _iLowLagMediaRecording2.pauseAsync(behavior);

  @override
  Future<void> resumeAsync() => _iLowLagMediaRecording2.resumeAsync();

  late final _iLowLagMediaRecording3 = ILowLagMediaRecording3.from(this);

  @override
  Future<MediaCapturePauseResult?> pauseWithResultAsync(
          MediaCapturePauseBehavior behavior) =>
      _iLowLagMediaRecording3.pauseWithResultAsync(behavior);

  @override
  Future<MediaCaptureStopResult?> stopWithResultAsync() =>
      _iLowLagMediaRecording3.stopWithResultAsync();
}
