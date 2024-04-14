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

import 'tensorstring.dart';

/// @nodoc
const IID_ITensorStringStatics2 = '{9e355ed0-c8e2-5254-9137-0193a3668fd8}';

class ITensorStringStatics2 extends IInspectable {
  ITensorStringStatics2.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorStringStatics2Vtbl>().ref;

  final _ITensorStringStatics2Vtbl _vtable;

  factory ITensorStringStatics2.from(IInspectable interface) =>
      interface.cast(ITensorStringStatics2.fromPtr, IID_ITensorStringStatics2);

  TensorString? createFromShapeArrayAndDataArray(
      List<int> shape, List<String> data) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();
    final dataArray = data.toArray();

    final hr = _vtable.CreateFromShapeArrayAndDataArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                int shapeSize,
                Pointer<Int64> shape,
                int dataSize,
                Pointer<IntPtr> data,
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

    return TensorString.fromPtr(result);
  }
}

final class _ITensorStringStatics2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 shapeSize,
              Pointer<Int64> shape,
              Uint32 dataSize,
              Pointer<IntPtr> data,
              Pointer<COMObject> result)>> CreateFromShapeArrayAndDataArray;
}
