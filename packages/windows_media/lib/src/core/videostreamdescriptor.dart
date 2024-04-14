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

import '../mediaproperties/videoencodingproperties.dart';
import 'imediastreamdescriptor.dart';
import 'imediastreamdescriptor2.dart';
import 'ivideostreamdescriptor.dart';
import 'ivideostreamdescriptor2.dart';
import 'ivideostreamdescriptorfactory.dart';

/// Represents a description a video media stream.
class VideoStreamDescriptor extends IInspectable
    implements
        IVideoStreamDescriptor,
        IMediaStreamDescriptor,
        IMediaStreamDescriptor2,
        IVideoStreamDescriptor2 {
  VideoStreamDescriptor.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Core.VideoStreamDescriptor';

  factory VideoStreamDescriptor.create(
          VideoEncodingProperties? encodingProperties) =>
      createActivationFactory(IVideoStreamDescriptorFactory.fromPtr, _className,
              IID_IVideoStreamDescriptorFactory)
          .create(encodingProperties);

  late final _iVideoStreamDescriptor = IVideoStreamDescriptor.from(this);

  @override
  VideoEncodingProperties? get encodingProperties =>
      _iVideoStreamDescriptor.encodingProperties;

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

  late final _iMediaStreamDescriptor2 = IMediaStreamDescriptor2.from(this);

  @override
  set label(String value) => _iMediaStreamDescriptor2.label = value;

  @override
  String get label => _iMediaStreamDescriptor2.label;

  late final _iVideoStreamDescriptor2 = IVideoStreamDescriptor2.from(this);

  @override
  VideoStreamDescriptor? copy() => _iVideoStreamDescriptor2.copy();
}
