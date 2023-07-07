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

import 'tensorint8bit.dart';

/// @nodoc
const IID_ITensorInt8BitStatics2 = '{c0d59637-c468-56fb-9535-c052bdb93dc0}';

class ITensorInt8BitStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorInt8BitStatics2.fromPtr(super.ptr);

  factory ITensorInt8BitStatics2.from(IInspectable interface) =>
      ITensorInt8BitStatics2.fromPtr(
          interface.toInterface(IID_ITensorInt8BitStatics2));

  TensorInt8Bit? createFromShapeArrayAndDataArray(
      List<int> shape, List<int> data) {
    final result = calloc<COMObject>();
    final pShapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      pShapeArray[i] = shape[i];
    }
    final pDataArray = calloc<Uint8>(data.length);
    for (var i = 0; i < data.length; i++) {
      pDataArray[i] = data[i];
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
                            Pointer<Uint8> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Uint8> data,
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl, shape.length,
        pShapeArray, data.length, pDataArray, result);

    free(pShapeArray);
    free(pDataArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorInt8Bit.fromPtr(result);
  }

  TensorInt8Bit? createFromBuffer(List<int> shape, IBuffer? buffer) {
    final result = calloc<COMObject>();
    final pShapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      pShapeArray[i] = shape[i];
    }

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
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    VTablePointer buffer,
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl, shape.length,
        pShapeArray, buffer?.ptr.ref.lpVtbl ?? nullptr, result);

    free(pShapeArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorInt8Bit.fromPtr(result);
  }
}
