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
import 'package:windows_storage/windows_storage.dart';

import 'ilearningmodelfeaturevalue.dart';
import 'itensor.dart';
import 'itensorfloat.dart';
import 'itensorfloatstatics.dart';
import 'itensorfloatstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 32-bit float tensor object.
class TensorFloat extends IInspectable
    implements
        ITensorFloat,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorFloat.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorFloat';

  static TensorFloat? create() => createActivationFactory(
          ITensorFloatStatics.fromPtr, _className, IID_ITensorFloatStatics)
      .create();

  static TensorFloat? create2(IIterable<int>? shape) => createActivationFactory(
          ITensorFloatStatics.fromPtr, _className, IID_ITensorFloatStatics)
      .create2(shape);

  static TensorFloat? createFromArray(
          IIterable<int>? shape, List<double> data) =>
      createActivationFactory(
              ITensorFloatStatics.fromPtr, _className, IID_ITensorFloatStatics)
          .createFromArray(shape, data);

  static TensorFloat? createFromIterable(
          IIterable<int>? shape, IIterable<double>? data) =>
      createActivationFactory(
              ITensorFloatStatics.fromPtr, _className, IID_ITensorFloatStatics)
          .createFromIterable(shape, data);

  static TensorFloat? createFromShapeArrayAndDataArray(
          List<int> shape, List<double> data) =>
      createActivationFactory(ITensorFloatStatics2.fromPtr, _className,
              IID_ITensorFloatStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorFloat? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorFloatStatics2.fromPtr, _className,
              IID_ITensorFloatStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorFloat = ITensorFloat.from(this);

  @override
  List<double> getAsVectorView() => _iTensorFloat.getAsVectorView();

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
