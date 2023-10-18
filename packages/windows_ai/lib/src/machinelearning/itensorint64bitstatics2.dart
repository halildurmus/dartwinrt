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

import 'tensorint64bit.dart';

/// @nodoc
const IID_ITensorInt64BitStatics2 = '{6d3d9dcb-ff40-5ec2-89fe-084e2b6bc6db}';

class ITensorInt64BitStatics2 extends IInspectable {
  ITensorInt64BitStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt64BitStatics2Vtbl>().ref;

  final _ITensorInt64BitStatics2Vtbl _vtable;

  factory ITensorInt64BitStatics2.from(IInspectable interface) => interface
      .cast(ITensorInt64BitStatics2.fromPtr, IID_ITensorInt64BitStatics2);

  TensorInt64Bit? createFromShapeArrayAndDataArray(
      List<int> shape, List<int> data) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();
    final dataArray = data.toArray<Int64>();

    final hr = _vtable.CreateFromShapeArrayAndDataArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int shapeSize,
                Pointer<Int64> shape,
                int dataSize,
                Pointer<Int64> data,
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

    return TensorInt64Bit.fromPtr(result);
  }

  TensorInt64Bit? createFromBuffer(List<int> shape, IBuffer? buffer) {
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

    return TensorInt64Bit.fromPtr(result);
  }
}

final class _ITensorInt64BitStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 shapeSize,
              Pointer<Int64> shape,
              Uint32 dataSize,
              Pointer<Int64> data,
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
