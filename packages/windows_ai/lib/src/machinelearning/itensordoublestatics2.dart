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

import 'tensordouble.dart';

/// @nodoc
const IID_ITensorDoubleStatics2 = '{93a570de-5e9a-5094-85c8-592c655e68ac}';

class ITensorDoubleStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorDoubleStatics2.fromPtr(super.ptr);

  factory ITensorDoubleStatics2.from(IInspectable interface) =>
      ITensorDoubleStatics2.fromPtr(
          interface.toInterface(IID_ITensorDoubleStatics2));

  TensorDouble? createFromShapeArrayAndDataArray(
      List<int> shape, List<double> data) {
    final result = calloc<COMObject>();
    final shapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      shapeArray[i] = shape[i];
    }
    final dataArray = calloc<Double>(data.length);
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
                            Pointer<Double> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Double> data,
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

    return TensorDouble.fromPtr(result);
  }

  TensorDouble? createFromBuffer(List<int> shape, IBuffer? buffer) {
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
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl, shape.length,
        shapeArray, buffer?.ptr.ref.lpVtbl ?? nullptr, result);

    free(shapeArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorDouble.fromPtr(result);
  }
}
