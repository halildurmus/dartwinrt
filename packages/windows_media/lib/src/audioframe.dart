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

import 'audiobuffer.dart';
import 'audiobufferaccessmode.dart';
import 'iaudioframe.dart';
import 'iaudioframefactory.dart';
import 'imediaframe.dart';

/// Represents a single frame of audio data.
class AudioFrame extends IInspectable
    implements IAudioFrame, IMediaFrame, IClosable {
  AudioFrame.fromPtr(super.ptr);

  static const _className = 'Windows.Media.AudioFrame';

  factory AudioFrame.create(int capacity) => createActivationFactory(
          IAudioFrameFactory.fromPtr, _className, IID_IAudioFrameFactory)
      .create(capacity);

  late final _iAudioFrame = IAudioFrame.from(this);

  @override
  AudioBuffer? lockBuffer(AudioBufferAccessMode mode) =>
      _iAudioFrame.lockBuffer(mode);

  late final _iMediaFrame = IMediaFrame.from(this);

  @override
  String get type => _iMediaFrame.type;

  @override
  bool get isReadOnly => _iMediaFrame.isReadOnly;

  @override
  set relativeTime(Duration? value) => _iMediaFrame.relativeTime = value;

  @override
  Duration? get relativeTime => _iMediaFrame.relativeTime;

  @override
  set systemRelativeTime(Duration? value) =>
      _iMediaFrame.systemRelativeTime = value;

  @override
  Duration? get systemRelativeTime => _iMediaFrame.systemRelativeTime;

  @override
  set duration(Duration? value) => _iMediaFrame.duration = value;

  @override
  Duration? get duration => _iMediaFrame.duration;

  @override
  set isDiscontinuous(bool value) => _iMediaFrame.isDiscontinuous = value;

  @override
  bool get isDiscontinuous => _iMediaFrame.isDiscontinuous;

  @override
  IPropertySet? get extendedProperties => _iMediaFrame.extendedProperties;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
