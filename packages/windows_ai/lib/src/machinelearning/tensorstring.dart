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

import 'ilearningmodelfeaturevalue.dart';
import 'itensor.dart';
import 'itensorstring.dart';
import 'itensorstringstatics.dart';
import 'itensorstringstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A string tensor object.
class TensorString extends IInspectable
    implements
        ITensorString,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorString.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorString';

  static TensorString? create() => createActivationFactory(
          ITensorStringStatics.fromPtr, _className, IID_ITensorStringStatics)
      .create();

  static TensorString? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorStringStatics.fromPtr, _className,
              IID_ITensorStringStatics)
          .create2(shape);

  static TensorString? createFromArray(
          IIterable<int>? shape, List<String> data) =>
      createActivationFactory(ITensorStringStatics.fromPtr, _className,
              IID_ITensorStringStatics)
          .createFromArray(shape, data);

  static TensorString? createFromIterable(
          IIterable<int>? shape, IIterable<String>? data) =>
      createActivationFactory(ITensorStringStatics.fromPtr, _className,
              IID_ITensorStringStatics)
          .createFromIterable(shape, data);

  static TensorString? createFromShapeArrayAndDataArray(
          List<int> shape, List<String> data) =>
      createActivationFactory(ITensorStringStatics2.fromPtr, _className,
              IID_ITensorStringStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  late final _iTensorString = ITensorString.from(this);

  @override
  List<String> getAsVectorView() => _iTensorString.getAsVectorView();

  late final _iTensor = ITensor.from(this);

  @override
  TensorKind get tensorKind => _iTensor.tensorKind;

  @override
  List<int>? get shape => _iTensor.shape;

  late final _iLearningModelFeatureValue =
      ILearningModelFeatureValue.from(this);

  @override
  LearningModelFeatureKind get kind => _iLearningModelFeatureValue.kind;

  late final _iMemoryBuffer = IMemoryBuffer.from(this);

  @override
  IMemoryBufferReference? createReference() => _iMemoryBuffer.createReference();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
