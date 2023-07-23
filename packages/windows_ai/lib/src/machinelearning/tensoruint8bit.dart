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
import 'itensoruint8bit.dart';
import 'itensoruint8bitstatics.dart';
import 'itensoruint8bitstatics2.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// A 8-bit unsigned integer tensor object.
class TensorUInt8Bit extends IInspectable
    implements
        ITensorUInt8Bit,
        ITensor,
        ILearningModelFeatureValue,
        IMemoryBuffer,
        IClosable {
  TensorUInt8Bit.fromPtr(super.ptr);

  static const _className = 'Windows.AI.MachineLearning.TensorUInt8Bit';

  static TensorUInt8Bit? create() => createActivationFactory(
          ITensorUInt8BitStatics.fromPtr,
          _className,
          IID_ITensorUInt8BitStatics)
      .create();

  static TensorUInt8Bit? create2(IIterable<int>? shape) =>
      createActivationFactory(ITensorUInt8BitStatics.fromPtr, _className,
              IID_ITensorUInt8BitStatics)
          .create2(shape);

  static TensorUInt8Bit? createFromArray(
          IIterable<int>? shape, List<int> data) =>
      createActivationFactory(ITensorUInt8BitStatics.fromPtr, _className,
              IID_ITensorUInt8BitStatics)
          .createFromArray(shape, data);

  static TensorUInt8Bit? createFromIterable(
          IIterable<int>? shape, IIterable<int>? data) =>
      createActivationFactory(ITensorUInt8BitStatics.fromPtr, _className,
              IID_ITensorUInt8BitStatics)
          .createFromIterable(shape, data);

  static TensorUInt8Bit? createFromShapeArrayAndDataArray(
          List<int> shape, List<int> data) =>
      createActivationFactory(ITensorUInt8BitStatics2.fromPtr, _className,
              IID_ITensorUInt8BitStatics2)
          .createFromShapeArrayAndDataArray(shape, data);

  static TensorUInt8Bit? createFromBuffer(List<int> shape, IBuffer? buffer) =>
      createActivationFactory(ITensorUInt8BitStatics2.fromPtr, _className,
              IID_ITensorUInt8BitStatics2)
          .createFromBuffer(shape, buffer);

  late final _iTensorUInt8Bit = ITensorUInt8Bit.from(this);

  @override
  List<int> getAsVectorView() => _iTensorUInt8Bit.getAsVectorView();

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
