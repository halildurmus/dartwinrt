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

import '../mediaproperties/timedmetadataencodingproperties.dart';
import 'imediastreamdescriptor.dart';
import 'imediastreamdescriptor2.dart';
import 'itimedmetadatastreamdescriptor.dart';
import 'itimedmetadatastreamdescriptorfactory.dart';

/// Represents a description a timed metada media stream.
class TimedMetadataStreamDescriptor extends IInspectable
    implements
        ITimedMetadataStreamDescriptor,
        IMediaStreamDescriptor2,
        IMediaStreamDescriptor {
  TimedMetadataStreamDescriptor.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Core.TimedMetadataStreamDescriptor';

  factory TimedMetadataStreamDescriptor.create(
          TimedMetadataEncodingProperties? encodingProperties) =>
      createActivationFactory(ITimedMetadataStreamDescriptorFactory.fromPtr,
              _className, IID_ITimedMetadataStreamDescriptorFactory)
          .create(encodingProperties);

  late final _iTimedMetadataStreamDescriptor =
      ITimedMetadataStreamDescriptor.from(this);

  @override
  TimedMetadataEncodingProperties? get encodingProperties =>
      _iTimedMetadataStreamDescriptor.encodingProperties;

  @override
  TimedMetadataStreamDescriptor? copy() =>
      _iTimedMetadataStreamDescriptor.copy();

  late final _iMediaStreamDescriptor2 = IMediaStreamDescriptor2.from(this);

  @override
  set label(String value) => _iMediaStreamDescriptor2.label = value;

  @override
  String get label => _iMediaStreamDescriptor2.label;

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
}
