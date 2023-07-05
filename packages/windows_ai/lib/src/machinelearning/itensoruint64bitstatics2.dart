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

import 'tensoruint64bit.dart';

/// @nodoc
const IID_ITensorUInt64BitStatics2 = '{085a687d-67e1-5b1e-b232-4fabe9ca20b3}';

class ITensorUInt64BitStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorUInt64BitStatics2.fromPtr(super.ptr);

  factory ITensorUInt64BitStatics2.from(IInspectable interface) =>
      ITensorUInt64BitStatics2.fromPtr(
          interface.toInterface(IID_ITensorUInt64BitStatics2));

  TensorUInt64Bit? createFromShapeArrayAndDataArray(
      List<int> shape, List<int> data) {
    final result = calloc<COMObject>();
    final pShapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      pShapeArray[i] = shape[i];
    }
    final pDataArray = calloc<Uint64>(data.length);
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
                            Pointer<Uint64> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Uint64> data,
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

    return TensorUInt64Bit.fromPtr(result);
  }

  TensorUInt64Bit? createFromBuffer(List<int> shape, IBuffer? buffer) {
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
        pShapeArray, buffer == null ? nullptr : buffer.ptr.ref.lpVtbl, result);

    free(pShapeArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt64Bit.fromPtr(result);
  }
}
