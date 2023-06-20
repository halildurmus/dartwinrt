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
import 'package:windows_storage/windows_storage.dart';

import 'ilearningmodel.dart';
import 'ilearningmodelfeaturedescriptor.dart';
import 'ilearningmodeloperatorprovider.dart';
import 'ilearningmodelstatics.dart';

/// Represents a trained machine learning model.
class LearningModel extends IInspectable implements ILearningModel, IClosable {
  LearningModel.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.LearningModel';

  static Future<LearningModel?> loadFromStorageFileAsync(
          IStorageFile? modelFile) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromStorageFileAsync(modelFile);

  static Future<LearningModel?> loadFromStreamAsync(
          IRandomAccessStreamReference? modelStream) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromStreamAsync(modelStream);

  static LearningModel? loadFromFilePath(String filePath) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromFilePath(filePath);

  static LearningModel? loadFromStream(
          IRandomAccessStreamReference? modelStream) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromStream(modelStream);

  static Future<LearningModel?> loadFromStorageFileWithOperatorProviderAsync(
          IStorageFile? modelFile,
          ILearningModelOperatorProvider? operatorProvider) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromStorageFileWithOperatorProviderAsync(
              modelFile, operatorProvider);

  static Future<LearningModel?> loadFromStreamWithOperatorProviderAsync(
          IRandomAccessStreamReference? modelStream,
          ILearningModelOperatorProvider? operatorProvider) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromStreamWithOperatorProviderAsync(
              modelStream, operatorProvider);

  static LearningModel? loadFromFilePathWithOperatorProvider(
          String filePath, ILearningModelOperatorProvider? operatorProvider) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromFilePathWithOperatorProvider(filePath, operatorProvider);

  static LearningModel? loadFromStreamWithOperatorProvider(
          IRandomAccessStreamReference? modelStream,
          ILearningModelOperatorProvider? operatorProvider) =>
      createActivationFactory(ILearningModelStatics.fromPtr, _className,
              IID_ILearningModelStatics)
          .loadFromStreamWithOperatorProvider(modelStream, operatorProvider);

  late final _iLearningModel = ILearningModel.from(this);

  @override
  String get author => _iLearningModel.author;

  @override
  String get name => _iLearningModel.name;

  @override
  String get domain => _iLearningModel.domain;

  @override
  String get description => _iLearningModel.description;

  @override
  int get version => _iLearningModel.version;

  @override
  Map<String, String> get metadata => _iLearningModel.metadata;

  @override
  List<ILearningModelFeatureDescriptor> get inputFeatures =>
      _iLearningModel.inputFeatures;

  @override
  List<ILearningModelFeatureDescriptor> get outputFeatures =>
      _iLearningModel.outputFeatures;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
