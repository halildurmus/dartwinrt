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

import 'tensoruint32bit.dart';

/// @nodoc
const IID_ITensorUInt32BitStatics2 = '{ef1a1f1c-314e-569d-b496-5c8447d20cd2}';

class ITensorUInt32BitStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorUInt32BitStatics2.fromPtr(super.ptr);

  factory ITensorUInt32BitStatics2.from(IInspectable interface) =>
      ITensorUInt32BitStatics2.fromPtr(
          interface.toInterface(IID_ITensorUInt32BitStatics2));

  TensorUInt32Bit? createFromShapeArrayAndDataArray(
      List<int> shape, List<int> data) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();
    final dataArray = data.toArray<Uint32>();

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
                            Pointer<Uint32> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Uint32> data,
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

    return TensorUInt32Bit.fromPtr(result);
  }

  TensorUInt32Bit? createFromBuffer(List<int> shape, IBuffer? buffer) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();

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

    return TensorUInt32Bit.fromPtr(result);
  }
}
