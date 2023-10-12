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

import 'ilearningmodeloperatorprovider.dart';
import 'learningmodel.dart';

/// @nodoc
const IID_ILearningModelStatics = '{e3b977e8-6952-4e47-8ef4-1f7f07897c6d}';

class ILearningModelStatics extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  ILearningModelStatics.fromPtr(super.ptr);

  factory ILearningModelStatics.from(IInspectable interface) =>
      interface.cast(ILearningModelStatics.fromPtr, IID_ILearningModelStatics);

  Future<LearningModel?> loadFromStorageFileAsync(IStorageFile? modelFile) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelFile,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer modelFile,
                    Pointer<COMObject> operation)>()(
        lpVtbl, modelFile.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(operation,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LearningModel?> loadFromStreamAsync(
      IRandomAccessStreamReference? modelStream) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer modelStream,
                    Pointer<COMObject> operation)>()(
        lpVtbl, modelStream.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(operation,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  LearningModel? loadFromFilePath(String filePath) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr filePath,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int filePath,
                    Pointer<COMObject> result)>()(
        lpVtbl, filePath.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModel.fromPtr(result);
  }

  LearningModel? loadFromStream(IRandomAccessStreamReference? modelStream) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer modelStream,
                    Pointer<COMObject> result)>()(
        lpVtbl, modelStream.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModel.fromPtr(result);
  }

  Future<LearningModel?> loadFromStorageFileWithOperatorProviderAsync(
      IStorageFile? modelFile,
      ILearningModelOperatorProvider? operatorProvider) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelFile,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer modelFile,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> operation)>()(
        lpVtbl, modelFile.lpVtbl, operatorProvider.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(operation,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LearningModel?> loadFromStreamWithOperatorProviderAsync(
      IRandomAccessStreamReference? modelStream,
      ILearningModelOperatorProvider? operatorProvider) {
    final operation = calloc<COMObject>();

    final hr = vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> operation)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer modelStream,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> operation)>()(
        lpVtbl, modelStream.lpVtbl, operatorProvider.lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(operation,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  LearningModel? loadFromFilePathWithOperatorProvider(
      String filePath, ILearningModelOperatorProvider? operatorProvider) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr filePath,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int filePath,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> result)>()(
        lpVtbl, filePath.toHString(), operatorProvider.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModel.fromPtr(result);
  }

  LearningModel? loadFromStreamWithOperatorProvider(
      IRandomAccessStreamReference? modelStream,
      ILearningModelOperatorProvider? operatorProvider) {
    final result = calloc<COMObject>();

    final hr = vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer modelStream,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> result)>()(
        lpVtbl, modelStream.lpVtbl, operatorProvider.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return LearningModel.fromPtr(result);
  }
}
