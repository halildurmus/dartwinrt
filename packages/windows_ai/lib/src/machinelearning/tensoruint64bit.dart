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
import 'itensoruint64bit.dart';
import 'itensoruint64bitstatics.dart';
import 'itensoruint64bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 64-bit unsigned integer tensor object.
class TensorUInt64Bit extends IInspectable
    implements
        ITensorUInt64Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorUInt64Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorUInt64Bit';

  static TensorUInt64Bit? create() => createActivationFactory(
          ITensorUInt64BitStatics.fromPtr,
          _className,
          IID_ITensorUInt64BitStatics)
      .create();

  static TensorUInt64Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorUInt64BitStatics.fromPtr, _className,
              IID_ITensorUInt64BitStatics)
          .create2(shape);

  static TensorUInt64Bit? createFromArray(
          IIterable<int>? shape, List<int> data) =>
      createActivationFactory(ITensorUInt64BitStatics.fromPtr, _className,
              IID_ITensorUInt64BitStatics)
          .createFromArray(shape, data);

  static TensorUInt64Bit? createFromIterable(
          IIterable<int>? shape, IIterable<int>? data) =>
      createActivationFactory(ITensorUInt64BitStatics.fromPtr, _className,
              IID_ITensorUInt64BitStatics)
          .createFromIterable(shape, data);

  static TensorUInt64Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<int> data) =>
      createActivationFactory(ITensorUInt64BitStatics2.fromPtr, _className,
              IID_ITensorUInt64BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorUInt64Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorUInt64BitStatics2.fromPtr, _className,
              IID_ITensorUInt64BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorUInt64Bit = ITensorUInt64Bit.from(this);

  @override
  List<int> getAsVectorView() => _iTensorUInt64Bit.getAsVectorView();

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
