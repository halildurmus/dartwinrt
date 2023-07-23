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

import '../mediaproperties/audioencodingproperties.dart';
import 'iaudiostreamdescriptor.dart';
import 'iaudiostreamdescriptor2.dart';
import 'iaudiostreamdescriptor3.dart';
import 'iaudiostreamdescriptorfactory.dart';
import 'imediastreamdescriptor.dart';
import 'imediastreamdescriptor2.dart';

/// Represents a description an audio media stream.
class AudioStreamDescriptor extends IInspectable
    implements
        IAudioStreamDescriptor,
        IMediaStreamDescriptor,
        IAudioStreamDescriptor2,
        IMediaStreamDescriptor2,
        IAudioStreamDescriptor3 {
  AudioStreamDescriptor.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Core.AudioStreamDescriptor';

  factory AudioStreamDescriptor.create(
          AudioEncodingProperties? encodingProperties) =>
      createActivationFactory(IAudioStreamDescriptorFactory.fromPtr, _className,
              IID_IAudioStreamDescriptorFactory)
          .create(encodingProperties);

  late final _iAudioStreamDescriptor = IAudioStreamDescriptor.from(this);

  @override
  AudioEncodingProperties? get encodingProperties =>
      _iAudioStreamDescriptor.encodingProperties;

  late final _iMediaStreamDescriptor = IMediaStreamDescriptor.from(this);

  @override
  bool get isSelected => _iMediaStreamDescriptor.isSelected;

  @override
  set name(String value) => _iMediaStreamDescriptor.name = value;

  @override
  String get name => _iMediaStreamDescriptor.name;

  @override
  set language(String value) => _iMediaStreamDescriptor.language = value;

  @override
  String get language => _iMediaStreamDescriptor.language;

  late final _iAudioStreamDescriptor2 = IAudioStreamDescriptor2.from(this);

  @override
  set leadingEncoderPadding(int? value) =>
      _iAudioStreamDescriptor2.leadingEncoderPadding = value;

  @override
  int? get leadingEncoderPadding =>
      _iAudioStreamDescriptor2.leadingEncoderPadding;

  @override
  set trailingEncoderPadding(int? value) =>
      _iAudioStreamDescriptor2.trailingEncoderPadding = value;

  @override
  int? get trailingEncoderPadding =>
      _iAudioStreamDescriptor2.trailingEncoderPadding;

  late final _iMediaStreamDescriptor2 = IMediaStreamDescriptor2.from(this);

  @override
  set label(String value) => _iMediaStreamDescriptor2.label = value;

  @override
  String get label => _iMediaStreamDescriptor2.label;

  late final _iAudioStreamDescriptor3 = IAudioStreamDescriptor3.from(this);

  @override
  AudioStreamDescriptor? copy() => _iAudioStreamDescriptor3.copy();
}
