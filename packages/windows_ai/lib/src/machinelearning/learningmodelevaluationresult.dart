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

import 'ilearningmodelevaluationresult.dart';

/// Get the results of the evaluation.
class LearningModelEvaluationResult extends IInspectable
    implements ILearningModelEvaluationResult {
  LearningModelEvaluationResult.fromPtr(super.ptr);

  late final _iLearningModelEvaluationResult =
      ILearningModelEvaluationResult.from(this);

  @override
  String get correlationId => _iLearningModelEvaluationResult.correlationId;

  @override
  int get errorStatus => _iLearningModelEvaluationResult.errorStatus;

  @override
  bool get succeeded => _iLearningModelEvaluationResult.succeeded;

  @override
  Map<String, Object?> get outputs => _iLearningModelEvaluationResult.outputs;
}
