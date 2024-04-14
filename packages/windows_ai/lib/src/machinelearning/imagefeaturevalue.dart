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
import 'package:windows_media/windows_media.dart';

import 'iimagefeaturevalue.dart';
import 'iimagefeaturevaluestatics.dart';
import 'ilearningmodelfeaturevalue.dart';
import 'learningmodelfeaturekind.dart';

/// Describes the properties of the image used to pass into a model.
class ImageFeatureValue extends IInspectable
    implements IImageFeatureValue, ILearningModelFeatureValue {
  ImageFeatureValue.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.ImageFeatureValue';

  static ImageFeatureValue? createFromVideoFrame(VideoFrame? image) =>
      createActivationFactory(IImageFeatureValueStatics.fromPtr, _className,
              IID_IImageFeatureValueStatics)
          .createFromVideoFrame(image);

  late final _iImageFeatureValue = IImageFeatureValue.from(this);

  @override
  VideoFrame? get videoFrame => _iImageFeatureValue.videoFrame;

  late final _iLearningModelFeatureValue =
      ILearningModelFeatureValue.from(this);

  @override
  LearningModelFeatureKind get kind => _iLearningModelFeatureValue.kind;
}
