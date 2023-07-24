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

import 'tensoruint16bit.dart';

/// @nodoc
const IID_ITensorUInt16BitStatics2 = '{8af40c64-d69f-5315-9348-490877bbd642}';

class ITensorUInt16BitStatics2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ITensorUInt16BitStatics2.fromPtr(super.ptr);

  factory ITensorUInt16BitStatics2.from(IInspectable interface) =>
      ITensorUInt16BitStatics2.fromPtr(
          interface.toInterface(IID_ITensorUInt16BitStatics2));

  TensorUInt16Bit? createFromShapeArrayAndDataArray(
      List<int> shape, List<int> data) {
    final result = calloc<COMObject>();
    final shapeArray = shape.toArray<Int64>();
    final dataArray = data.toArray<Uint16>();

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
                            Pointer<Uint16> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int shapeSize,
                    Pointer<Int64> shape,
                    int dataSize,
                    Pointer<Uint16> data,
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

    return TensorUInt16Bit.fromPtr(result);
  }

  TensorUInt16Bit? createFromBuffer(List<int> shape, IBuffer? buffer) {
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

    return TensorUInt16Bit.fromPtr(result);
  }
}
