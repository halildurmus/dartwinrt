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

import 'ilearningmodeloperatorprovider.dart';
import 'learningmodel.dart';

/// @nodoc
const IID_ILearningModelStatics = '{e3b977e8-6952-4e47-8ef4-1f7f07897c6d}';

class ILearningModelStatics extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  ILearningModelStatics.fromPtr(super.ptr);

  factory ILearningModelStatics.from(IInspectable interface) =>
      ILearningModelStatics.fromPtr(
          interface.toInterface(IID_ILearningModelStatics));

  Future<LearningModel?> loadFromStorageFileAsync(IStorageFile? modelFile) {
    final retValuePtr = calloc<COMObject>();
    final modelFilePtr = modelFile == null ? nullptr : modelFile.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelFile,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer modelFile,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, modelFilePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(retValuePtr,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LearningModel?> loadFromStreamAsync(
      IRandomAccessStreamReference? modelStream) {
    final retValuePtr = calloc<COMObject>();
    final modelStreamPtr =
        modelStream == null ? nullptr : modelStream.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer modelStream,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, modelStreamPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(retValuePtr,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  LearningModel? loadFromFilePath(String filePath) {
    final retValuePtr = calloc<COMObject>();
    final filePathHString = filePath.toHString();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr filePath,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int filePath,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePathHString, retValuePtr);

    WindowsDeleteString(filePathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModel.fromPtr(retValuePtr);
  }

  LearningModel? loadFromStream(IRandomAccessStreamReference? modelStream) {
    final retValuePtr = calloc<COMObject>();
    final modelStreamPtr =
        modelStream == null ? nullptr : modelStream.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer modelStream,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, modelStreamPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModel.fromPtr(retValuePtr);
  }

  Future<LearningModel?> loadFromStorageFileWithOperatorProviderAsync(
      IStorageFile? modelFile,
      ILearningModelOperatorProvider? operatorProvider) {
    final retValuePtr = calloc<COMObject>();
    final modelFilePtr = modelFile == null ? nullptr : modelFile.ptr.ref.lpVtbl;
    final operatorProviderPtr =
        operatorProvider == null ? nullptr : operatorProvider.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelFile,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer modelFile,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, modelFilePtr, operatorProviderPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(retValuePtr,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  Future<LearningModel?> loadFromStreamWithOperatorProviderAsync(
      IRandomAccessStreamReference? modelStream,
      ILearningModelOperatorProvider? operatorProvider) {
    final retValuePtr = calloc<COMObject>();
    final modelStreamPtr =
        modelStream == null ? nullptr : modelStream.ptr.ref.lpVtbl;
    final operatorProviderPtr =
        operatorProvider == null ? nullptr : operatorProvider.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(11)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer modelStream,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, modelStreamPtr, operatorProviderPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final asyncOperation = IAsyncOperation<LearningModel?>.fromPtr(retValuePtr,
        creator: LearningModel.fromPtr);
    return asyncOperation.toFuture(asyncOperation.getResults);
  }

  LearningModel? loadFromFilePathWithOperatorProvider(
      String filePath, ILearningModelOperatorProvider? operatorProvider) {
    final retValuePtr = calloc<COMObject>();
    final filePathHString = filePath.toHString();
    final operatorProviderPtr =
        operatorProvider == null ? nullptr : operatorProvider.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(12)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr filePath,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int filePath,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, filePathHString, operatorProviderPtr, retValuePtr);

    WindowsDeleteString(filePathHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModel.fromPtr(retValuePtr);
  }

  LearningModel? loadFromStreamWithOperatorProvider(
      IRandomAccessStreamReference? modelStream,
      ILearningModelOperatorProvider? operatorProvider) {
    final retValuePtr = calloc<COMObject>();
    final modelStreamPtr =
        modelStream == null ? nullptr : modelStream.ptr.ref.lpVtbl;
    final operatorProviderPtr =
        operatorProvider == null ? nullptr : operatorProvider.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(13)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer modelStream,
                            VTablePointer operatorProvider,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer modelStream,
                    VTablePointer operatorProvider,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, modelStreamPtr, operatorProviderPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return LearningModel.fromPtr(retValuePtr);
  }
}
