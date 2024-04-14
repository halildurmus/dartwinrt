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
import 'itensorint64bit.dart';
import 'itensorint64bitstatics.dart';
import 'itensorint64bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 64-bit signed integer tensor object.
class TensorInt64Bit extends IInspectable
    implements
        ITensorInt64Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorInt64Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorInt64Bit';

  static TensorInt64Bit? create() => createActivationFactory(
          ITensorInt64BitStatics.fromPtr,
          _className,
          IID_ITensorInt64BitStatics)
      .create();

  static TensorInt64Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorInt64BitStatics.fromPtr, _className,
              IID_ITensorInt64BitStatics)
          .create2(shape);

  static TensorInt64Bit? createFromArray(
          IIterable<int>? shape, List<int> data) =>
      createActivationFactory(ITensorInt64BitStatics.fromPtr, _className,
              IID_ITensorInt64BitStatics)
          .createFromArray(shape, data);

  static TensorInt64Bit? createFromIterable(
          IIterable<int>? shape, IIterable<int>? data) =>
      createActivationFactory(ITensorInt64BitStatics.fromPtr, _className,
              IID_ITensorInt64BitStatics)
          .createFromIterable(shape, data);

  static TensorInt64Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<int> data) =>
      createActivationFactory(ITensorInt64BitStatics2.fromPtr, _className,
              IID_ITensorInt64BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorInt64Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorInt64BitStatics2.fromPtr, _className,
              IID_ITensorInt64BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorInt64Bit = ITensorInt64Bit.from(this);

  @override
  List<int> getAsVectorView() => _iTensorInt64Bit.getAsVectorView();

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
