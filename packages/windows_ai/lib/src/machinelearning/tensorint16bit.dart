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
import 'itensorint16bit.dart';
import 'itensorint16bitstatics.dart';
import 'itensorint16bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 16-bit signed integer tensor object.
class TensorInt16Bit extends IInspectable
    implements
        ITensorInt16Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorInt16Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorInt16Bit';

  static TensorInt16Bit? create() => createActivationFactory(
          ITensorInt16BitStatics.fromPtr,
          _className,
          IID_ITensorInt16BitStatics)
      .create();

  static TensorInt16Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorInt16BitStatics.fromPtr, _className,
              IID_ITensorInt16BitStatics)
          .create2(shape);

  static TensorInt16Bit? createFromArray(
          IIterable<int>? shape, List<int> data) =>
      createActivationFactory(ITensorInt16BitStatics.fromPtr, _className,
              IID_ITensorInt16BitStatics)
          .createFromArray(shape, data);

  static TensorInt16Bit? createFromIterable(
          IIterable<int>? shape, IIterable<int>? data) =>
      createActivationFactory(ITensorInt16BitStatics.fromPtr, _className,
              IID_ITensorInt16BitStatics)
          .createFromIterable(shape, data);

  static TensorInt16Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<int> data) =>
      createActivationFactory(ITensorInt16BitStatics2.fromPtr, _className,
              IID_ITensorInt16BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorInt16Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorInt16BitStatics2.fromPtr, _className,
              IID_ITensorInt16BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorInt16Bit = ITensorInt16Bit.from(this);

  @override
  List<int> getAsVectorView() => _iTensorInt16Bit.getAsVectorView();

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
