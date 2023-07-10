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

import 'iinfraredmediaframe.dart';
import 'mediaframereference.dart';
import 'videomediaframe.dart';

/// Represents a VideoMediaFrame that contains infrared video data.
class InfraredMediaFrame extends IInspectable implements IInfraredMediaFrame {
  InfraredMediaFrame.fromPtr(super.ptr);

  late final _iInfraredMediaFrame = IInfraredMediaFrame.from(this);

  @override
  MediaFrameReference? get frameReference =>
      _iInfraredMediaFrame.frameReference;

  @override
  VideoMediaFrame? get videoMediaFrame => _iInfraredMediaFrame.videoMediaFrame;

  @override
  bool get isIlluminated => _iInfraredMediaFrame.isIlluminated;
}
