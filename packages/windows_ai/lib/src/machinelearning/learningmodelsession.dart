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

import 'ilearningmodelsession.dart';
import 'ilearningmodelsessionfactory.dart';
import 'ilearningmodelsessionfactory2.dart';
import 'learningmodel.dart';
import 'learningmodelbinding.dart';
import 'learningmodeldevice.dart';
import 'learningmodelevaluationresult.dart';
import 'learningmodelsessionoptions.dart';

/// Used to evaluate machine learning models.
class LearningModelSession extends IInspectable
    implements ILearningModelSession, IClosable {
  LearningModelSession.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.LearningModelSession';

  factory LearningModelSession.createFromModel(LearningModel? model) =>
      createActivationFactory(ILearningModelSessionFactory.fromPtr, _className,
              IID_ILearningModelSessionFactory)
          .createFromModel(model);

  factory LearningModelSession.createFromModelOnDevice(
          LearningModel? model, LearningModelDevice? deviceToRunOn) =>
      createActivationFactory(ILearningModelSessionFactory.fromPtr, _className,
              IID_ILearningModelSessionFactory)
          .createFromModelOnDevice(model, deviceToRunOn);

  factory LearningModelSession.createFromModelOnDeviceWithSessionOptions(
          LearningModel? model,
          LearningModelDevice? deviceToRunOn,
          LearningModelSessionOptions? learningModelSessionOptions) =>
      createActivationFactory(ILearningModelSessionFactory2.fromPtr, _className,
              IID_ILearningModelSessionFactory2)
          .createFromModelOnDeviceWithSessionOptions(
              model, deviceToRunOn, learningModelSessionOptions);

  late final _iLearningModelSession = ILearningModelSession.from(this);

  @override
  LearningModel? get model => _iLearningModelSession.model;

  @override
  LearningModelDevice? get device => _iLearningModelSession.device;

  @override
  IPropertySet get evaluationProperties =>
      _iLearningModelSession.evaluationProperties;

  @override
  Future<LearningModelEvaluationResult?> evaluateAsync(
          LearningModelBinding? bindings, String correlationId) =>
      _iLearningModelSession.evaluateAsync(bindings, correlationId);

  @override
  Future<LearningModelEvaluationResult?> evaluateFeaturesAsync(
          IMap<String, Object?>? features, String correlationId) =>
      _iLearningModelSession.evaluateFeaturesAsync(features, correlationId);

  @override
  LearningModelEvaluationResult? evaluate(
          LearningModelBinding? bindings, String correlationId) =>
      _iLearningModelSession.evaluate(bindings, correlationId);

  @override
  LearningModelEvaluationResult? evaluateFeatures(
          IMap<String, Object?>? features, String correlationId) =>
      _iLearningModelSession.evaluateFeatures(features, correlationId);

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
