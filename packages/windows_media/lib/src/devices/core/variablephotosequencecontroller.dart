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

import '../../mediaproperties/imediaencodingproperties.dart';
import '../../mediaproperties/mediaratio.dart';
import 'framecontrolcapabilities.dart';
import 'framecontroller.dart';
import 'ivariablephotosequencecontroller.dart';

/// Represents the settings for a variable photo sequence.
class VariablePhotoSequenceController extends IInspectable
    implements IVariablePhotoSequenceController {
  VariablePhotoSequenceController.fromPtr(super.ptr);

  late final _iVariablePhotoSequenceController =
      IVariablePhotoSequenceController.from(this);

  @override
  bool get supported => _iVariablePhotoSequenceController.supported;

  @override
  double get maxPhotosPerSecond =>
      _iVariablePhotoSequenceController.maxPhotosPerSecond;

  @override
  double get photosPerSecondLimit =>
      _iVariablePhotoSequenceController.photosPerSecondLimit;

  @override
  set photosPerSecondLimit(double value) =>
      _iVariablePhotoSequenceController.photosPerSecondLimit = value;

  @override
  MediaRatio? getHighestConcurrentFrameRate(
          IMediaEncodingProperties? captureProperties) =>
      _iVariablePhotoSequenceController
          .getHighestConcurrentFrameRate(captureProperties);

  @override
  MediaRatio? getCurrentFrameRate() =>
      _iVariablePhotoSequenceController.getCurrentFrameRate();

  @override
  FrameControlCapabilities? get frameCapabilities =>
      _iVariablePhotoSequenceController.frameCapabilities;

  @override
  IVector<FrameController?>? get desiredFrameControllers =>
      _iVariablePhotoSequenceController.desiredFrameControllers;
}
