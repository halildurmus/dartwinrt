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

import 'iaudioencodingproperties.dart';
import 'iaudioencodingproperties2.dart';
import 'iaudioencodingproperties3.dart';
import 'iaudioencodingpropertiesstatics.dart';
import 'iaudioencodingpropertiesstatics2.dart';
import 'iaudioencodingpropertieswithformatuserdata.dart';
import 'imediaencodingproperties.dart';
import 'mediapropertyset.dart';

/// Describes the encoding properties of an audio stream.
class AudioEncodingProperties extends IInspectable
    implements
        IAudioEncodingProperties,
        IMediaEncodingProperties,
        IAudioEncodingPropertiesWithFormatUserData,
        IAudioEncodingProperties2,
        IAudioEncodingProperties3 {
  AudioEncodingProperties() : super(activateClass(_className));
  AudioEncodingProperties.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.MediaProperties.AudioEncodingProperties';

  static AudioEncodingProperties? createAac(
          int sampleRate, int channelCount, int bitrate) =>
      createActivationFactory(IAudioEncodingPropertiesStatics.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics)
          .createAac(sampleRate, channelCount, bitrate);

  static AudioEncodingProperties? createAacAdts(
          int sampleRate, int channelCount, int bitrate) =>
      createActivationFactory(IAudioEncodingPropertiesStatics.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics)
          .createAacAdts(sampleRate, channelCount, bitrate);

  static AudioEncodingProperties? createMp3(
          int sampleRate, int channelCount, int bitrate) =>
      createActivationFactory(IAudioEncodingPropertiesStatics.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics)
          .createMp3(sampleRate, channelCount, bitrate);

  static AudioEncodingProperties? createPcm(
          int sampleRate, int channelCount, int bitsPerSample) =>
      createActivationFactory(IAudioEncodingPropertiesStatics.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics)
          .createPcm(sampleRate, channelCount, bitsPerSample);

  static AudioEncodingProperties? createWma(
          int sampleRate, int channelCount, int bitrate) =>
      createActivationFactory(IAudioEncodingPropertiesStatics.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics)
          .createWma(sampleRate, channelCount, bitrate);

  static AudioEncodingProperties? createAlac(
          int sampleRate, int channelCount, int bitsPerSample) =>
      createActivationFactory(IAudioEncodingPropertiesStatics2.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics2)
          .createAlac(sampleRate, channelCount, bitsPerSample);

  static AudioEncodingProperties? createFlac(
          int sampleRate, int channelCount, int bitsPerSample) =>
      createActivationFactory(IAudioEncodingPropertiesStatics2.fromPtr,
              _className, IID_IAudioEncodingPropertiesStatics2)
          .createFlac(sampleRate, channelCount, bitsPerSample);

  late final _iAudioEncodingProperties = IAudioEncodingProperties.from(this);

  @override
  set bitrate(int value) => _iAudioEncodingProperties.bitrate = value;

  @override
  int get bitrate => _iAudioEncodingProperties.bitrate;

  @override
  set channelCount(int value) => _iAudioEncodingProperties.channelCount = value;

  @override
  int get channelCount => _iAudioEncodingProperties.channelCount;

  @override
  set sampleRate(int value) => _iAudioEncodingProperties.sampleRate = value;

  @override
  int get sampleRate => _iAudioEncodingProperties.sampleRate;

  @override
  set bitsPerSample(int value) =>
      _iAudioEncodingProperties.bitsPerSample = value;

  @override
  int get bitsPerSample => _iAudioEncodingProperties.bitsPerSample;

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;

  late final _iAudioEncodingPropertiesWithFormatUserData =
      IAudioEncodingPropertiesWithFormatUserData.from(this);

  @override
  void setFormatUserData(List<int> value) =>
      _iAudioEncodingPropertiesWithFormatUserData.setFormatUserData(value);

  @override
  List<int> getFormatUserData() =>
      _iAudioEncodingPropertiesWithFormatUserData.getFormatUserData();

  late final _iAudioEncodingProperties2 = IAudioEncodingProperties2.from(this);

  @override
  bool get isSpatial => _iAudioEncodingProperties2.isSpatial;

  late final _iAudioEncodingProperties3 = IAudioEncodingProperties3.from(this);

  @override
  AudioEncodingProperties? copy() => _iAudioEncodingProperties3.copy();
}
