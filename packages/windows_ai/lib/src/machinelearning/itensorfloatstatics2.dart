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

import 'tensorfloat.dart';

/// @nodoc
const IID_ITensorFloatStatics2 = '{24610bc1-5e44-5713-b281-8f4ad4d555e8}';

class ITensorFloatStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorFloatStatics2.fromPtr(super.ptr);

  factory ITensorFloatStatics2.from(IInspectable interface) =>
      ITensorFloatStatics2.fromPtr(
          interface.toInterface(IID_ITensorFloatStatics2));

  TensorFloat? createFromShapeArrayAndDataArray(
      List<int> shape, List<double> data) {
    final retValuePtr = calloc<COMObject>();
    final pShapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      pShapeArray[i] = shape.elementAt(i);
    }
    final pDataArray = calloc<Float>(data.length);
    for (var i = 0; i < data.length; i++) {
      pDataArray[i] = data.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 shapeSize,
                            Pointer<Int64> shape,
                            Uint32 dataSize,
                            Pointer<Float> data,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Float> data,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        shape.length, pShapeArray, data.length, pDataArray, retValuePtr);

    free(pShapeArray);
    free(pDataArray);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorFloat.fromPtr(retValuePtr);
  }

  TensorFloat? createFromBuffer(List<int> shape, IBuffer? buffer) {
    final retValuePtr = calloc<COMObject>();
    final pShapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      pShapeArray[i] = shape.elementAt(i);
    }
    final bufferPtr = buffer == null ? nullptr : buffer.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 shapeSize,
                            Pointer<Int64> shape,
                            VTablePointer buffer,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    VTablePointer buffer,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, shape.length, pShapeArray, bufferPtr, retValuePtr);

    free(pShapeArray);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return TensorFloat.fromPtr(retValuePtr);
  }
}
