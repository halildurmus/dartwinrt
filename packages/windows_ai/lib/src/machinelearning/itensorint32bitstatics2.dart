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

import 'tensorint32bit.dart';

/// @nodoc
const IID_ITensorInt32BitStatics2 = '{7c4b079a-e956-5ce0-a3bd-157d9d79b5ec}';

class ITensorInt32BitStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorInt32BitStatics2.fromPtr(super.ptr);

  factory ITensorInt32BitStatics2.from(IInspectable interface) =>
      ITensorInt32BitStatics2.fromPtr(
          interface.toInterface(IID_ITensorInt32BitStatics2));

  TensorInt32Bit? createFromShapeArrayAndDataArray(
      List<int> shape, List<int> data) {
    final result = calloc<COMObject>();
    final shapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      shapeArray[i] = shape[i];
    }
    final dataArray = calloc<Int32>(data.length);
    for (var i = 0; i < data.length; i++) {
      dataArray[i] = data[i];
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
                            Pointer<Int32> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Int32> data,
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl, shape.length,
        shapeArray, data.length, dataArray, result);

    free(shapeArray);
    free(dataArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorInt32Bit.fromPtr(result);
  }

  TensorInt32Bit? createFromBuffer(List<int> shape, IBuffer? buffer) {
    final result = calloc<COMObject>();
    final shapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      shapeArray[i] = shape[i];
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
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, shape.length, shapeArray, buffer.lpVtbl, result);

    free(shapeArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorInt32Bit.fromPtr(result);
  }
}
