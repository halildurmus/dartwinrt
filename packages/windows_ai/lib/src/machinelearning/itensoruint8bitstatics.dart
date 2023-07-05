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

import 'tensoruint8bit.dart';

/// @nodoc
const IID_ITensorUInt8BitStatics = '{05f67583-bc24-4220-8a41-2dcd8c5ed33c}';

class ITensorUInt8BitStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorUInt8BitStatics.fromPtr(super.ptr);

  factory ITensorUInt8BitStatics.from(IInspectable interface) =>
      ITensorUInt8BitStatics.fromPtr(
          interface.toInterface(IID_ITensorUInt8BitStatics));

  TensorUInt8Bit? create() {
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
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt8Bit.fromPtr(result);
  }

  TensorUInt8Bit? create2(IIterable<int>? shape) {
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
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt8Bit.fromPtr(result);
  }

  TensorUInt8Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final result = calloc<COMObject>();
    final pDataArray = calloc<Uint8>(data.length);
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
                            Pointer<Uint8> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<Uint8> data,
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
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt8Bit.fromPtr(result);
  }

  TensorUInt8Bit? createFromIterable(
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
                    data.toInterface('{88318266-f3fd-50fc-8f08-b823a41b60c1}'))
                .ptr
                .ref
                .lpVtbl,
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorUInt8Bit.fromPtr(result);
  }
}
