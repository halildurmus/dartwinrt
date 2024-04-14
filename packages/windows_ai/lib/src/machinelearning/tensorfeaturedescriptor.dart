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

import 'ilearningmodelfeaturedescriptor.dart';
import 'itensorfeaturedescriptor.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// Tensors are multi-dimensional arrays of values.
class TensorFeatureDescriptor extends IInspectable
    implements ITensorFeatureDescriptor, ILearningModelFeatureDescriptor {
  TensorFeatureDescriptor.fromPtr(super.ptr);

  late final _iTensorFeatureDescriptor = ITensorFeatureDescriptor.from(this);

  @override
  TensorKind get tensorKind => _iTensorFeatureDescriptor.tensorKind;

  @override
  List<int>? get shape => _iTensorFeatureDescriptor.shape;

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
