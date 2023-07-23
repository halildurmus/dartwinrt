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
import 'package:windows_graphics/windows_graphics.dart';

import 'iimagefeaturedescriptor.dart';
import 'iimagefeaturedescriptor2.dart';
import 'ilearningmodelfeaturedescriptor.dart';
import 'learningmodelfeaturekind.dart';
import 'learningmodelpixelrange.dart';

/// Describes the properties of the image the model is expecting.
class ImageFeatureDescriptor extends IInspectable
    implements
        IImageFeatureDescriptor,
        IImageFeatureDescriptor2,
        ILearningModelFeatureDescriptor {
  ImageFeatureDescriptor.fromPtr(super.ptr);

  late final _iImageFeatureDescriptor = IImageFeatureDescriptor.from(this);

  @override
  BitmapPixelFormat get bitmapPixelFormat =>
      _iImageFeatureDescriptor.bitmapPixelFormat;

  @override
  BitmapAlphaMode get bitmapAlphaMode =>
      _iImageFeatureDescriptor.bitmapAlphaMode;

  @override
  int get width => _iImageFeatureDescriptor.width;

  @override
  int get height => _iImageFeatureDescriptor.height;

  late final _iImageFeatureDescriptor2 = IImageFeatureDescriptor2.from(this);

  @override
  LearningModelPixelRange get pixelRange =>
      _iImageFeatureDescriptor2.pixelRange;

  late final _iLearningModelFeatureDescriptor =
      ILearningModelFeatureDescriptor.from(this);

  @override
  String get name => _iLearningModelFeatureDescriptor.name;

  @override
  String get description => _iLearningModelFeatureDescriptor.description;

  @override
  LearningModelFeatureKind get kind => _iLearningModelFeatureDescriptor.kind;

  @override
  bool get isRequired => _iLearningModelFeatureDescriptor.isRequired;
}
