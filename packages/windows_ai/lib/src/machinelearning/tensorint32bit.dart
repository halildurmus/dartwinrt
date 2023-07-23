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
import 'itensorint32bit.dart';
import 'itensorint32bitstatics.dart';
import 'itensorint32bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 32-bit signed integer tensor object.
class TensorInt32Bit extends IInspectable
    implements
        ITensorInt32Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorInt32Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorInt32Bit';

  static TensorInt32Bit? create() => createActivationFactory(
          ITensorInt32BitStatics.fromPtr,
          _className,
          IID_ITensorInt32BitStatics)
      .create();

  static TensorInt32Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorInt32BitStatics.fromPtr, _className,
              IID_ITensorInt32BitStatics)
          .create2(shape);

  static TensorInt32Bit? createFromArray(
          IIterable<int>? shape, List<int> data) =>
      createActivationFactory(ITensorInt32BitStatics.fromPtr, _className,
              IID_ITensorInt32BitStatics)
          .createFromArray(shape, data);

  static TensorInt32Bit? createFromIterable(
          IIterable<int>? shape, IIterable<int>? data) =>
      createActivationFactory(ITensorInt32BitStatics.fromPtr, _className,
              IID_ITensorInt32BitStatics)
          .createFromIterable(shape, data);

  static TensorInt32Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<int> data) =>
      createActivationFactory(ITensorInt32BitStatics2.fromPtr, _className,
              IID_ITensorInt32BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorInt32Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorInt32BitStatics2.fromPtr, _className,
              IID_ITensorInt32BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorInt32Bit = ITensorInt32Bit.from(this);

  @override
  List<int> getAsVectorView() => _iTensorInt32Bit.getAsVectorView();

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
