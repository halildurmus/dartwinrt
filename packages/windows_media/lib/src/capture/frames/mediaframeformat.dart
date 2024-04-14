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

import '../../mediaproperties/audioencodingproperties.dart';
import '../../mediaproperties/mediaratio.dart';
import 'imediaframeformat.dart';
import 'imediaframeformat2.dart';
import 'videomediaframeformat.dart';

/// Describes the format of a media frame obtained from a MediaFrameSource and
/// represented by a MediaFrameReference.
class MediaFrameFormat extends IInspectable
    implements IMediaFrameFormat, IMediaFrameFormat2 {
  MediaFrameFormat.fromPtr(super.ptr);

  late final _iMediaFrameFormat = IMediaFrameFormat.from(this);

  @override
  String get majorType => _iMediaFrameFormat.majorType;

  @override
  String get subtype => _iMediaFrameFormat.subtype;

  @override
  MediaRatio? get frameRate => _iMediaFrameFormat.frameRate;

  @override
  Map<Guid, Object?>? get properties => _iMediaFrameFormat.properties;

  @override
  VideoMediaFrameFormat? get videoFormat => _iMediaFrameFormat.videoFormat;

  late final _iMediaFrameFormat2 = IMediaFrameFormat2.from(this);

  @override
  AudioEncodingProperties? get audioEncodingProperties =>
      _iMediaFrameFormat2.audioEncodingProperties;
}
