// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'tensorboolean.dart';

/// @nodoc
const IID_ITensorBooleanStatics2 = '{a3a4a501-6a2d-52d7-b04b-c435baee0115}';

class ITensorBooleanStatics2 extends IInspectable {
  ITensorBooleanStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorBooleanStatics2Vtbl>().ref;

  final _ITensorBooleanStatics2Vtbl _vtable;

  factory ITensorBooleanStatics2.from(IInspectable interface) => interface.cast(
      ITensorBooleanStatics2.fromPtr, IID_ITensorBooleanStatics2);

  TensorBoolean? createFromShapeArrayAndDataArray(
      List<int> shape, List<bool> data) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();
    final dataArray = data.toArray();

    final hr = _vtable.CreateFromShapeArrayAndDataArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int shapeSize,
                Pointer<Int64> shape,
                int dataSize,
                Pointer<Bool> data,
                Pointer<COMObject> result)>()(
        lpVtbl, shape.length, shapeArray, data.length, dataArray, result);

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

    return TensorBoolean.fromPtr(result);
  }

  TensorBoolean? createFromBuffer(List<int> shape, IBuffer? buffer) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();

    final hr = _vtable.CreateFromBuffer.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int shapeSize,
                Pointer<Int64> shape,
                VTablePointer buffer,
                Pointer<COMObject> result)>()(
        lpVtbl, shape.length, shapeArray, buffer.lpVtbl, result);

    free(shapeArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorBoolean.fromPtr(result);
  }
}

final class _ITensorBooleanStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 shapeSize,
              Pointer<Int64> shape,
              Uint32 dataSize,
              Pointer<Bool> data,
              Pointer<COMObject> result)>> CreateFromShapeArrayAndDataArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 shapeSize,
              Pointer<Int64> shape,
              VTablePointer buffer,
              Pointer<COMObject> result)>> CreateFromBuffer;
}
