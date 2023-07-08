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

import 'tensorstring.dart';

/// @nodoc
const IID_ITensorStringStatics2 = '{9e355ed0-c8e2-5254-9137-0193a3668fd8}';

class ITensorStringStatics2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ITensorStringStatics2.fromPtr(super.ptr);

  factory ITensorStringStatics2.from(IInspectable interface) =>
      ITensorStringStatics2.fromPtr(
          interface.toInterface(IID_ITensorStringStatics2));

  TensorString? createFromShapeArrayAndDataArray(
      List<int> shape, List<String> data) {
    final result = calloc<COMObject>();
    final shapeArray = calloc<Int64>(shape.length);
    for (var i = 0; i < shape.length; i++) {
      shapeArray[i] = shape[i];
    }
    final dataHandles = <int>[];
    final dataArray = calloc<HSTRING>(data.length);
    for (var i = 0; i < data.length; i++) {
      dataArray[i] = data[i].toHString();
      dataHandles.add(dataArray[i]);
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
                            Pointer<IntPtr> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<IntPtr> data,
                    Pointer<COMObject> result)>()(ptr.ref.lpVtbl, shape.length,
        shapeArray, data.length, dataArray, result);

    free(shapeArray);
    dataHandles.forEach(WindowsDeleteString);
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
