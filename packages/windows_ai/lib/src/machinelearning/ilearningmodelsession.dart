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

import 'learningmodel.dart';
import 'learningmodelbinding.dart';
import 'learningmodeldevice.dart';
import 'learningmodelevaluationresult.dart';

/// @nodoc
const IID_ILearningModelSession = '{8e58f8f6-b787-4c11-90f0-7129aeca74a9}';

class ILearningModelSession extends IInspectable {
  ILearningModelSession.fromPtr(super.ptr);

  factory ILearningModelSession.from(IInspectable interface) =>
      interface.cast(ILearningModelSession.fromPtr, IID_ILearningModelSession);

  LearningModel? get model {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return LearningModel.fromPtr(value);
  }

  LearningModelDevice? get device {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return LearningModelDevice.fromPtr(value);
  }

  IPropertySet? get evaluationProperties {
    final value = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Pointer<COMObject> value)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, Pointer<COMObject> value)>()(
        lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertySet.fromPtr(value);
  }

  Future<LearningModelEvaluationResult?> evaluateAsync(
      LearningModelBinding? bindings, String correlationId) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer bindings,
                            IntPtr correlationId,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer bindings,
                    int correlationId, Pointer<COMObject> operation)>()(
        lpVtbl, bindings.lpVtbl, correlationId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<LearningModelEvaluationResult?>.fromPtr(operation,
            creator: LearningModelEvaluationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LearningModelEvaluationResult?> evaluateFeaturesAsync(
      IMap<String, Object?>? features, String correlationId) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer features,
                            IntPtr correlationId,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer features,
                    int correlationId, Pointer<COMObject> operation)>()(
        lpVtbl, features.lpVtbl, correlationId.toHString(), operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<LearningModelEvaluationResult?>.fromPtr(operation,
            creator: LearningModelEvaluationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  LearningModelEvaluationResult? evaluate(
      LearningModelBinding? bindings, String correlationId) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer bindings,
                            IntPtr correlationId,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer bindings,
                    int correlationId, Pointer<COMObject> result)>()(
        lpVtbl, bindings.lpVtbl, correlationId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModelEvaluationResult.fromPtr(result);
  }

  LearningModelEvaluationResult? evaluateFeatures(
      IMap<String, Object?>? features, String correlationId) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer features,
                            IntPtr correlationId,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer features,
                    int correlationId, Pointer<COMObject> result)>()(
        lpVtbl, features.lpVtbl, correlationId.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModelEvaluationResult.fromPtr(result);
  }
}
