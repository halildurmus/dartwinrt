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
import 'itensorfloat16bit.dart';
import 'itensorfloat16bitstatics.dart';
import 'itensorfloat16bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 16-bit float tensor object.
class TensorFloat16Bit extends IInspectable
    implements
        ITensorFloat16Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorFloat16Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorFloat16Bit';

  static TensorFloat16Bit? create() => createActivationFactory(
          ITensorFloat16BitStatics.fromPtr,
          _className,
          IID_ITensorFloat16BitStatics)
      .create();

  static TensorFloat16Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorFloat16BitStatics.fromPtr, _className,
              IID_ITensorFloat16BitStatics)
          .create2(shape);

  static TensorFloat16Bit? createFromArray(
          IIterable<int>? shape, List<double> data) =>
      createActivationFactory(ITensorFloat16BitStatics.fromPtr, _className,
              IID_ITensorFloat16BitStatics)
          .createFromArray(shape, data);

  static TensorFloat16Bit? createFromIterable(
          IIterable<int>? shape, IIterable<double>? data) =>
      createActivationFactory(ITensorFloat16BitStatics.fromPtr, _className,
              IID_ITensorFloat16BitStatics)
          .createFromIterable(shape, data);

  static TensorFloat16Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<double> data) =>
      createActivationFactory(ITensorFloat16BitStatics2.fromPtr, _className,
              IID_ITensorFloat16BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorFloat16Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorFloat16BitStatics2.fromPtr, _className,
              IID_ITensorFloat16BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorFloat16Bit = ITensorFloat16Bit.from(this);

  @override
  List<double> getAsVectorView() => _iTensorFloat16Bit.getAsVectorView();

  late final _iTensor = ITensor.from(this);

  @override
  TensorKind get tensorKind => _iTensor.tensorKind;

  @override
  List<int> get shape => _iTensor.shape;

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
