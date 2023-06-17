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

import 'ilearningmodelsessionoptions.dart';
import 'ilearningmodelsessionoptions2.dart';
import 'ilearningmodelsessionoptions3.dart';

/// Describes inference options that are used during the creation of
/// LearningModelSession objects.
class LearningModelSessionOptions extends IInspectable
    implements
        ILearningModelSessionOptions,
        ILearningModelSessionOptions2,
        ILearningModelSessionOptions3 {
  LearningModelSessionOptions() : super(activateClass(_className));
  LearningModelSessionOptions.fromPtr(super.ptr);

  static const _className =
      'Windows.AI.MachineLearning.LearningModelSessionOptions';

  late final _iLearningModelSessionOptions =
      ILearningModelSessionOptions.from(this);

  @override
  int get batchSizeOverride => _iLearningModelSessionOptions.batchSizeOverride;

  @override
  set batchSizeOverride(int value) =>
      _iLearningModelSessionOptions.batchSizeOverride = value;

  late final _iLearningModelSessionOptions2 =
      ILearningModelSessionOptions2.from(this);

  @override
  bool get closeModelOnSessionCreation =>
      _iLearningModelSessionOptions2.closeModelOnSessionCreation;

  @override
  set closeModelOnSessionCreation(bool value) =>
      _iLearningModelSessionOptions2.closeModelOnSessionCreation = value;

  late final _iLearningModelSessionOptions3 =
      ILearningModelSessionOptions3.from(this);

  @override
  void overrideNamedDimension(String name, int dimension) =>
      _iLearningModelSessionOptions3.overrideNamedDimension(name, dimension);
}
