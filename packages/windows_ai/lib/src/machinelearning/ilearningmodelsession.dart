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

import 'learningmodel.dart';
import 'learningmodelbinding.dart';
import 'learningmodeldevice.dart';
import 'learningmodelevaluationresult.dart';

/// @nodoc
const IID_ILearningModelSession = '{8e58f8f6-b787-4c11-90f0-7129aeca74a9}';

class ILearningModelSession extends IInspectable {
  // vtable begins at 6, is 7 entries long.
  ILearningModelSession.fromPtr(super.ptr);

  factory ILearningModelSession.from(IInspectable interface) =>
      ILearningModelSession.fromPtr(
          interface.toInterface(IID_ILearningModelSession));

  LearningModel? get model {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModel.fromPtr(retValuePtr);
  }

  LearningModelDevice? get device {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModelDevice.fromPtr(retValuePtr);
  }

  IPropertySet get evaluationProperties {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        Pointer<COMObject> retValuePtr)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return IPropertySet.fromPtr(retValuePtr);
  }

  Future<LearningModelEvaluationResult?> evaluateAsync(
      LearningModelBinding bindings, String correlationId) {
    final retValuePtr = calloc<COMObject>();
    final bindingsPtr = bindings.ptr.ref.lpVtbl;
    final correlationIdHString = correlationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer bindings,
                            IntPtr correlationId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer bindings,
                    int correlationId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, bindingsPtr, correlationIdHString, retValuePtr);

    WindowsDeleteString(correlationIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<LearningModelEvaluationResult?>.fromPtr(retValuePtr,
            creator: LearningModelEvaluationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LearningModelEvaluationResult?> evaluateFeaturesAsync(
      IMap<String, Object?> features, String correlationId) {
    final retValuePtr = calloc<COMObject>();
    final featuresPtr = features.ptr.ref.lpVtbl;
    final correlationIdHString = correlationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer features,
                            IntPtr correlationId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer features,
                    int correlationId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, featuresPtr, correlationIdHString, retValuePtr);

    WindowsDeleteString(correlationIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation =
        IAsyncOperation<LearningModelEvaluationResult?>.fromPtr(retValuePtr,
            creator: LearningModelEvaluationResult.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  LearningModelEvaluationResult? evaluate(
      LearningModelBinding bindings, String correlationId) {
    final retValuePtr = calloc<COMObject>();
    final bindingsPtr = bindings.ptr.ref.lpVtbl;
    final correlationIdHString = correlationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer bindings,
                            IntPtr correlationId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer bindings,
                    int correlationId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, bindingsPtr, correlationIdHString, retValuePtr);

    WindowsDeleteString(correlationIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModelEvaluationResult.fromPtr(retValuePtr);
  }

  LearningModelEvaluationResult? evaluateFeatures(
      IMap<String, Object?> features, String correlationId) {
    final retValuePtr = calloc<COMObject>();
    final featuresPtr = features.ptr.ref.lpVtbl;
    final correlationIdHString = correlationId.toHString();

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer features,
                            IntPtr correlationId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer features,
                    int correlationId, Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, featuresPtr, correlationIdHString, retValuePtr);

    WindowsDeleteString(correlationIdHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModelEvaluationResult.fromPtr(retValuePtr);
  }
}
