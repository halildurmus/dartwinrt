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

/// @nodoc
const IID_ILearningModelEvaluationResult =
    '{b2f9bfcd-960e-49c0-8593-eb190ae3eee2}';

class ILearningModelEvaluationResult extends IInspectable {
  ILearningModelEvaluationResult.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ILearningModelEvaluationResultVtbl>().ref;

  final _ILearningModelEvaluationResultVtbl _vtable;

  factory ILearningModelEvaluationResult.from(IInspectable interface) =>
      interface.cast(ILearningModelEvaluationResult.fromPtr,
          IID_ILearningModelEvaluationResult);

  String get correlationId {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_CorrelationId.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  int get errorStatus {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ErrorStatus.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool get succeeded {
    final value = calloc<Bool>();

    try {
      final hr = _vtable.get_Succeeded.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Bool> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  Map<String, Object?>? get outputs {
    final value = calloc<COMObject>();

    final hr = _vtable.get_Outputs.asFunction<
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

    return IMapView<String, Object?>.fromPtr(value,
            iterableIid: '{fe2f3d47-5d47-5499-8374-430c7cda0204}')
        .toMap();
  }
}

final class _ILearningModelEvaluationResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_CorrelationId;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ErrorStatus;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Bool> value)>>
      get_Succeeded;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_Outputs;
}
