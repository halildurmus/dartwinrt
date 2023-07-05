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

import 'tensoruint16bit.dart';

/// @nodoc
const IID_ITensorUInt16BitStatics = '{5df745dd-028a-481a-a27c-c7e6435e52dd}';

class ITensorUInt16BitStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorUInt16BitStatics.fromPtr(super.ptr);

  factory ITensorUInt16BitStatics.from(IInspectable interface) =>
      ITensorUInt16BitStatics.fromPtr(
          interface.toInterface(IID_ITensorUInt16BitStatics));

  TensorUInt16Bit? create() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt16Bit.fromPtr(result);
  }

  TensorUInt16Bit? create2(IIterable<int>? shape) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, VTablePointer shape,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer shape,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        shape == null
            ? nullptr
            : IInspectable(
                    shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
                .ptr
                .ref
                .lpVtbl,
        result);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt16Bit.fromPtr(result);
  }

  TensorUInt16Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final result = calloc<COMObject>();
    final pDataArray = calloc<Uint16>(data.length);
    for (var i = 0; i < data.length; i++) {
      pDataArray[i] = data[i];
    }

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer shape,
                            Uint32 dataSize,
                            Pointer<Uint16> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<Uint16> data,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        shape == null
            ? nullptr
            : IInspectable(
                    shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
                .ptr
                .ref
                .lpVtbl,
        data.length,
        pDataArray,
        result);

    free(pDataArray);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt16Bit.fromPtr(result);
  }

  TensorUInt16Bit? createFromIterable(
      IIterable<int>? shape, IIterable<int>? data) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, VTablePointer shape,
                            VTablePointer data, Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, VTablePointer shape,
                    VTablePointer data, Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        shape == null
            ? nullptr
            : IInspectable(
                    shape.toInterface('{7784427e-f9cc-518d-964b-e50d5ce727f1}'))
                .ptr
                .ref
                .lpVtbl,
        data == null
            ? nullptr
            : IInspectable(
                    data.toInterface('{ecfa9a6f-fa2e-5345-b297-efb4e8c6be87}'))
                .ptr
                .ref
                .lpVtbl,
        result);

    if (FAILED(hr)) {
      free(result);
      throw WindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt16Bit.fromPtr(result);
  }
}
