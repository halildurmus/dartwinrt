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
import 'package:windows_storage/windows_storage.dart';

import '../core/audiostreamdescriptor.dart';
import '../core/timedmetadatastreamdescriptor.dart';
import '../core/videostreamdescriptor.dart';
import 'audioencodingproperties.dart';
import 'audioencodingquality.dart';
import 'containerencodingproperties.dart';
import 'imediaencodingprofile.dart';
import 'imediaencodingprofile2.dart';
import 'imediaencodingprofile3.dart';
import 'imediaencodingprofilestatics.dart';
import 'imediaencodingprofilestatics2.dart';
import 'imediaencodingprofilestatics3.dart';
import 'videoencodingproperties.dart';
import 'videoencodingquality.dart';

/// Describes the encoding profile for an audio or video file. The encoding
/// profile includes descriptions of the audio and video encoding formats, and a
/// description of the media container.
class MediaEncodingProfile extends IInspectable
    implements
        IMediaEncodingProfile,
        IMediaEncodingProfile2,
        IMediaEncodingProfile3 {
  MediaEncodingProfile() : super(activateClass(_className));
  MediaEncodingProfile.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.MediaProperties.MediaEncodingProfile';

  static MediaEncodingProfile? createM4a(AudioEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createM4a(quality);

  static MediaEncodingProfile? createMp3(AudioEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createMp3(quality);

  static MediaEncodingProfile? createWma(AudioEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createWma(quality);

  static MediaEncodingProfile? createMp4(VideoEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createMp4(quality);

  static MediaEncodingProfile? createWmv(VideoEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createWmv(quality);

  static Future<MediaEncodingProfile?> createFromFileAsync(
          IStorageFile? file) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createFromFileAsync(file);

  static Future<MediaEncodingProfile?> createFromStreamAsync(
          IRandomAccessStream? stream) =>
      createActivationFactory(IMediaEncodingProfileStatics.fromPtr, _className,
              IID_IMediaEncodingProfileStatics)
          .createFromStreamAsync(stream);

  static MediaEncodingProfile? createWav(AudioEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics2.fromPtr, _className,
              IID_IMediaEncodingProfileStatics2)
          .createWav(quality);

  static MediaEncodingProfile? createAvi(VideoEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics2.fromPtr, _className,
              IID_IMediaEncodingProfileStatics2)
          .createAvi(quality);

  static MediaEncodingProfile? createAlac(AudioEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics3.fromPtr, _className,
              IID_IMediaEncodingProfileStatics3)
          .createAlac(quality);

  static MediaEncodingProfile? createFlac(AudioEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics3.fromPtr, _className,
              IID_IMediaEncodingProfileStatics3)
          .createFlac(quality);

  static MediaEncodingProfile? createHevc(VideoEncodingQuality quality) =>
      createActivationFactory(IMediaEncodingProfileStatics3.fromPtr, _className,
              IID_IMediaEncodingProfileStatics3)
          .createHevc(quality);

  late final _iMediaEncodingProfile = IMediaEncodingProfile.from(this);

  @override
  set audio(AudioEncodingProperties? value) =>
      _iMediaEncodingProfile.audio = value;

  @override
  AudioEncodingProperties? get audio => _iMediaEncodingProfile.audio;

  @override
  set video(VideoEncodingProperties? value) =>
      _iMediaEncodingProfile.video = value;

  @override
  VideoEncodingProperties? get video => _iMediaEncodingProfile.video;

  @override
  set container(ContainerEncodingProperties? value) =>
      _iMediaEncodingProfile.container = value;

  @override
  ContainerEncodingProperties? get container =>
      _iMediaEncodingProfile.container;

  late final _iMediaEncodingProfile2 = IMediaEncodingProfile2.from(this);

  @override
  void setAudioTracks(IIterable<AudioStreamDescriptor?>? value) =>
      _iMediaEncodingProfile2.setAudioTracks(value);

  @override
  IVector<AudioStreamDescriptor?> getAudioTracks() =>
      _iMediaEncodingProfile2.getAudioTracks();

  @override
  void setVideoTracks(IIterable<VideoStreamDescriptor?>? value) =>
      _iMediaEncodingProfile2.setVideoTracks(value);

  @override
  IVector<VideoStreamDescriptor?> getVideoTracks() =>
      _iMediaEncodingProfile2.getVideoTracks();

  late final _iMediaEncodingProfile3 = IMediaEncodingProfile3.from(this);

  @override
  void setTimedMetadataTracks(
          IIterable<TimedMetadataStreamDescriptor?>? value) =>
      _iMediaEncodingProfile3.setTimedMetadataTracks(value);

  @override
  IVector<TimedMetadataStreamDescriptor?> getTimedMetadataTracks() =>
      _iMediaEncodingProfile3.getTimedMetadataTracks();
}
