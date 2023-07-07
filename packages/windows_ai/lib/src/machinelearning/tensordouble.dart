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

import 'ilearningmodelfeaturevalue.dart';
import 'itensor.dart';
import 'itensordouble.dart';
import 'itensordoublestatics.dart';
import 'itensordoublestatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 64-bit float tensor object.
class TensorDouble extends IInspectable
    implements
        ITensorDouble,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorDouble.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorDouble';

  static TensorDouble? create() => createActivationFactory(
          ITensorDoubleStatics.fromPtr, _className, IID_ITensorDoubleStatics)
      .create();

  static TensorDouble? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorDoubleStatics.fromPtr, _className,
              IID_ITensorDoubleStatics)
          .create2(shape);

  static TensorDouble? createFromArray(
          IIterable<int>? shape, List<double> data) =>
      createActivationFactory(ITensorDoubleStatics.fromPtr, _className,
              IID_ITensorDoubleStatics)
          .createFromArray(shape, data);

  static TensorDouble? createFromIterable(
          IIterable<int>? shape, IIterable<double>? data) =>
      createActivationFactory(ITensorDoubleStatics.fromPtr, _className,
              IID_ITensorDoubleStatics)
          .createFromIterable(shape, data);

  static TensorDouble? createFromShapeArrayAndDataArray(
          List<int> shape, List<double> data) =>
      createActivationFactory(ITensorDoubleStatics2.fromPtr, _className,
              IID_ITensorDoubleStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorDouble? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorDoubleStatics2.fromPtr, _className,
              IID_ITensorDoubleStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorDouble = ITensorDouble.from(this);

  @override
  List<double> getAsVectorView() => _iTensorDouble.getAsVectorView();

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
