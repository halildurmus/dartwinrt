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
import 'itensoruint16bit.dart';
import 'itensoruint16bitstatics.dart';
import 'itensoruint16bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 16-bit unsigned integer tensor object.
class TensorUInt16Bit extends IInspectable
    implements
        ITensorUInt16Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorUInt16Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorUInt16Bit';

  static TensorUInt16Bit? create() => createActivationFactory(
          ITensorUInt16BitStatics.fromPtr,
          _className,
          IID_ITensorUInt16BitStatics)
      .create();

  static TensorUInt16Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorUInt16BitStatics.fromPtr, _className,
              IID_ITensorUInt16BitStatics)
          .create2(shape);

  static TensorUInt16Bit? createFromArray(
          IIterable<int>? shape, List<int> data) =>
      createActivationFactory(ITensorUInt16BitStatics.fromPtr, _className,
              IID_ITensorUInt16BitStatics)
          .createFromArray(shape, data);

  static TensorUInt16Bit? createFromIterable(
          IIterable<int>? shape, IIterable<int>? data) =>
      createActivationFactory(ITensorUInt16BitStatics.fromPtr, _className,
              IID_ITensorUInt16BitStatics)
          .createFromIterable(shape, data);

  static TensorUInt16Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<int> data) =>
      createActivationFactory(ITensorUInt16BitStatics2.fromPtr, _className,
              IID_ITensorUInt16BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorUInt16Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorUInt16BitStatics2.fromPtr, _className,
              IID_ITensorUInt16BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorUInt16Bit = ITensorUInt16Bit.from(this);

  @override
  List<int> getAsVectorView() => _iTensorUInt16Bit.getAsVectorView();

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
