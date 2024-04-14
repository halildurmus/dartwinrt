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
import 'package:windows_perception/windows_perception.dart';

import 'audiomediaframe.dart';
import 'buffermediaframe.dart';
import 'imediaframereference.dart';
import 'imediaframereference2.dart';
import 'mediaframeformat.dart';
import 'mediaframesourcekind.dart';
import 'videomediaframe.dart';

/// A wrapper class that represents a frame obtained from a MediaFrameSource.
/// Use the properties of this class to access the specific frame type provided
/// by the source, such as a VideoMediaFrame or BufferMediaFrame.
class MediaFrameReference extends IInspectable
    implements IMediaFrameReference, IClosable, IMediaFrameReference2 {
  MediaFrameReference.fromPtr(super.ptr);

  late final _iMediaFrameReference = IMediaFrameReference.from(this);

  @override
  MediaFrameSourceKind get sourceKind => _iMediaFrameReference.sourceKind;

  @override
  MediaFrameFormat? get format => _iMediaFrameReference.format;

  @override
  Duration? get systemRelativeTime => _iMediaFrameReference.systemRelativeTime;

  @override
  Duration get duration => _iMediaFrameReference.duration;

  @override
  Map<Guid, Object?>? get properties => _iMediaFrameReference.properties;

  @override
  BufferMediaFrame? get bufferMediaFrame =>
      _iMediaFrameReference.bufferMediaFrame;

  @override
  VideoMediaFrame? get videoMediaFrame => _iMediaFrameReference.videoMediaFrame;

  @override
  SpatialCoordinateSystem? get coordinateSystem =>
      _iMediaFrameReference.coordinateSystem;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();

  late final _iMediaFrameReference2 = IMediaFrameReference2.from(this);

  @override
  AudioMediaFrame? get audioMediaFrame =>
      _iMediaFrameReference2.audioMediaFrame;
}
