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

import 'tensorfloat16bit.dart';

/// @nodoc
const IID_ITensorFloat16BitStatics = '{a52db6f5-318a-44d4-820b-0cdc7054a84a}';

class ITensorFloat16BitStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorFloat16BitStatics.fromPtr(super.ptr);

  factory ITensorFloat16BitStatics.from(IInspectable interface) =>
      ITensorFloat16BitStatics.fromPtr(
          interface.toInterface(IID_ITensorFloat16BitStatics));

  TensorFloat16Bit? create() {
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

    return TensorFloat16Bit.fromPtr(retValuePtr);
  }

  TensorFloat16Bit? create2(IIterable<int>? shape) {
    final retValuePtr = calloc<COMObject>();
    final shapePtr = shape == null
        ? nullptr
        : IInspectable(
                shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(7)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer shape,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer shape,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, shapePtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorFloat16Bit.fromPtr(retValuePtr);
  }

  TensorFloat16Bit? createFromArray(IIterable<int>? shape, List<double> data) {
    final retValuePtr = calloc<COMObject>();
    final shapePtr = shape == null
        ? nullptr
        : IInspectable(
                shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
            .ptr
            .ref
            .lpVtbl;
    final pDataArray = calloc<Float>(data.length);
    for (var i = 0; i < data.length; i++) {
      pDataArray[i] = data.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer shape,
                            Uint32 dataSize,
                            Pointer<Float> data,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<Float> data,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, shapePtr, data.length, pDataArray, retValuePtr);

    free(pDataArray);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorFloat16Bit.fromPtr(retValuePtr);
  }

  TensorFloat16Bit? createFromIterable(
      IIterable<int>? shape, IIterable<double>? data) {
    final retValuePtr = calloc<COMObject>();
    final shapePtr = shape == null
        ? nullptr
        : IInspectable(
                shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
            .ptr
            .ref
            .lpVtbl;
    final dataPtr = data == null
        ? nullptr
        : IInspectable(
                data.toInterface('{b01bee51-063a-5fda-bd72-d76637bb8cb8}'))
            .ptr
            .ref
            .lpVtbl;

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer shape,
                                VTablePointer data,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer shape,
                        VTablePointer data, Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, shapePtr, dataPtr, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorFloat16Bit.fromPtr(retValuePtr);
  }
}
