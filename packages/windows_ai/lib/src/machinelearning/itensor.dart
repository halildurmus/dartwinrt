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

import 'ilearningmodelfeaturevalue.dart';
import 'learningmodelfeaturekind.dart';
import 'tensorkind.dart';

/// @nodoc
const IID_ITensor = '{05489593-a305-4a25-ad09-440119b4b7f6}';

class ITensor extends IInspectable implements ILearningModelFeatureValue {
  ITensor.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorVtbl>().ref;

  final _ITensorVtbl _vtable;

  factory ITensor.from(IInspectable interface) =>
      interface.cast(ITensor.fromPtr, IID_ITensor);

  TensorKind get tensorKind {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_TensorKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return TensorKind.from(value.value);
    } finally {
      free(value);
    }
  }

  List<int>? get shape {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Shape.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IVectorView<int>.fromPtr(value,
            iterableIid: '{7784427e-f9cc-518d-964b-e50d5ce727f1}',
            tIntType: IntType.int64)
        .toList();
  }

  late final _iLearningModelFeatureValue =
      ILearningModelFeatureValue.from(this);

  @override
  LearningModelFeatureKind get kind => _iLearningModelFeatureValue.kind;
}

final class _ITensorVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_TensorKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Shape;
}
