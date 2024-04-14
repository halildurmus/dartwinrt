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

import 'imediaencodingproperties.dart';
import 'ivideoencodingproperties.dart';
import 'ivideoencodingproperties2.dart';
import 'ivideoencodingproperties3.dart';
import 'ivideoencodingproperties4.dart';
import 'ivideoencodingproperties5.dart';
import 'ivideoencodingpropertiesstatics.dart';
import 'ivideoencodingpropertiesstatics2.dart';
import 'mediapropertyset.dart';
import 'mediaratio.dart';
import 'sphericalvideoframeformat.dart';
import 'stereoscopicvideopackingmode.dart';

/// Describes the encoding properties of a video stream.
class VideoEncodingProperties extends IInspectable
    implements
        IVideoEncodingProperties,
        IMediaEncodingProperties,
        IVideoEncodingProperties2,
        IVideoEncodingProperties3,
        IVideoEncodingProperties4,
        IVideoEncodingProperties5 {
  VideoEncodingProperties() : super(activateClass(_className));
  VideoEncodingProperties.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.MediaProperties.VideoEncodingProperties';

  static VideoEncodingProperties? createH264() => createActivationFactory(
          IVideoEncodingPropertiesStatics.fromPtr,
          _className,
          IID_IVideoEncodingPropertiesStatics)
      .createH264();

  static VideoEncodingProperties? createMpeg2() => createActivationFactory(
          IVideoEncodingPropertiesStatics.fromPtr,
          _className,
          IID_IVideoEncodingPropertiesStatics)
      .createMpeg2();

  static VideoEncodingProperties? createUncompressed(
          String subtype, int width, int height) =>
      createActivationFactory(IVideoEncodingPropertiesStatics.fromPtr,
              _className, IID_IVideoEncodingPropertiesStatics)
          .createUncompressed(subtype, width, height);

  static VideoEncodingProperties? createHevc() => createActivationFactory(
          IVideoEncodingPropertiesStatics2.fromPtr,
          _className,
          IID_IVideoEncodingPropertiesStatics2)
      .createHevc();

  late final _iVideoEncodingProperties = IVideoEncodingProperties.from(this);

  @override
  set bitrate(int value) => _iVideoEncodingProperties.bitrate = value;

  @override
  int get bitrate => _iVideoEncodingProperties.bitrate;

  @override
  set width(int value) => _iVideoEncodingProperties.width = value;

  @override
  int get width => _iVideoEncodingProperties.width;

  @override
  set height(int value) => _iVideoEncodingProperties.height = value;

  @override
  int get height => _iVideoEncodingProperties.height;

  @override
  MediaRatio? get frameRate => _iVideoEncodingProperties.frameRate;

  @override
  MediaRatio? get pixelAspectRatio =>
      _iVideoEncodingProperties.pixelAspectRatio;

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;

  late final _iVideoEncodingProperties2 = IVideoEncodingProperties2.from(this);

  @override
  void setFormatUserData(List<int> value) =>
      _iVideoEncodingProperties2.setFormatUserData(value);

  @override
  List<int> getFormatUserData() =>
      _iVideoEncodingProperties2.getFormatUserData();

  @override
  set profileId(int value) => _iVideoEncodingProperties2.profileId = value;

  @override
  int get profileId => _iVideoEncodingProperties2.profileId;

  late final _iVideoEncodingProperties3 = IVideoEncodingProperties3.from(this);

  @override
  StereoscopicVideoPackingMode get stereoscopicVideoPackingMode =>
      _iVideoEncodingProperties3.stereoscopicVideoPackingMode;

  late final _iVideoEncodingProperties4 = IVideoEncodingProperties4.from(this);

  @override
  SphericalVideoFrameFormat get sphericalVideoFrameFormat =>
      _iVideoEncodingProperties4.sphericalVideoFrameFormat;

  late final _iVideoEncodingProperties5 = IVideoEncodingProperties5.from(this);

  @override
  VideoEncodingProperties? copy() => _iVideoEncodingProperties5.copy();
}
