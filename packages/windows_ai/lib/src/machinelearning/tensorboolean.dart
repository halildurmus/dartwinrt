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
import 'package:windows_storage/windows_storage.dart';

import 'ilearningmodelfeaturevalue.dart';
import 'itensor.dart';
import 'itensorboolean.dart';
import 'itensorbooleanstatics.dart';
import 'itensorbooleanstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A boolean tensor object.
class TensorBoolean extends IInspectable
    implements
        ITensorBoolean,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorBoolean.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorBoolean';

  static TensorBoolean? create() => createActivationFactory(
          ITensorBooleanStatics.fromPtr, _className, IID_ITensorBooleanStatics)
      .create();

  static TensorBoolean? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorBooleanStatics.fromPtr, _className,
              IID_ITensorBooleanStatics)
          .create2(shape);

  static TensorBoolean? createFromArray(
          IIterable<int>? shape, List<bool> data) =>
      createActivationFactory(ITensorBooleanStatics.fromPtr, _className,
              IID_ITensorBooleanStatics)
          .createFromArray(shape, data);

  static TensorBoolean? createFromIterable(
          IIterable<int>? shape, IIterable<bool>? data) =>
      createActivationFactory(ITensorBooleanStatics.fromPtr, _className,
              IID_ITensorBooleanStatics)
          .createFromIterable(shape, data);

  static TensorBoolean? createFromShapeArrayAndDataArray(
          List<int> shape, List<bool> data) =>
      createActivationFactory(ITensorBooleanStatics2.fromPtr, _className,
              IID_ITensorBooleanStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorBoolean? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorBooleanStatics2.fromPtr, _className,
              IID_ITensorBooleanStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorBoolean = ITensorBoolean.from(this);

  @override
  List<bool> getAsVectorView() => _iTensorBoolean.getAsVectorView();

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
