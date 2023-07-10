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

import 'imediaencodingproperties.dart';
import 'itimedmetadataencodingproperties.dart';
import 'itimedmetadataencodingpropertiesstatics.dart';
import 'mediapropertyset.dart';

/// Describes the encoding properties of a timed metadata stream. Timed
/// metadata streams are used to encode data that is neither audio or video.
/// For example, a media file may contain a video stream and a timed
/// metadata stream containing GPS coordinates correlated to the video.
class TimedMetadataEncodingProperties extends IInspectable
    implements ITimedMetadataEncodingProperties, IMediaEncodingProperties {
  TimedMetadataEncodingProperties() : super(activateClass(_className));
  TimedMetadataEncodingProperties.fromPtr(super.ptr);

  static const _className =
      'Windows.Media.MediaProperties.TimedMetadataEncodingProperties';

  static TimedMetadataEncodingProperties? createPgs() =>
      createActivationFactory(ITimedMetadataEncodingPropertiesStatics.fromPtr,
              _className, IID_ITimedMetadataEncodingPropertiesStatics)
          .createPgs();

  static TimedMetadataEncodingProperties? createSrt() =>
      createActivationFactory(ITimedMetadataEncodingPropertiesStatics.fromPtr,
              _className, IID_ITimedMetadataEncodingPropertiesStatics)
          .createSrt();

  static TimedMetadataEncodingProperties? createSsa(List<int> formatUserData) =>
      createActivationFactory(ITimedMetadataEncodingPropertiesStatics.fromPtr,
              _className, IID_ITimedMetadataEncodingPropertiesStatics)
          .createSsa(formatUserData);

  static TimedMetadataEncodingProperties? createVobSub(
          List<int> formatUserData) =>
      createActivationFactory(ITimedMetadataEncodingPropertiesStatics.fromPtr,
              _className, IID_ITimedMetadataEncodingPropertiesStatics)
          .createVobSub(formatUserData);

  late final _iTimedMetadataEncodingProperties =
      ITimedMetadataEncodingProperties.from(this);

  @override
  void setFormatUserData(List<int> value) =>
      _iTimedMetadataEncodingProperties.setFormatUserData(value);

  @override
  List<int> getFormatUserData() =>
      _iTimedMetadataEncodingProperties.getFormatUserData();

  @override
  TimedMetadataEncodingProperties? copy() =>
      _iTimedMetadataEncodingProperties.copy();

  late final _iMediaEncodingProperties = IMediaEncodingProperties.from(this);

  @override
  MediaPropertySet? get properties => _iMediaEncodingProperties.properties;

  @override
  String get type => _iMediaEncodingProperties.type;

  @override
  set subtype(String value) => _iMediaEncodingProperties.subtype = value;

  @override
  String get subtype => _iMediaEncodingProperties.subtype;
}
