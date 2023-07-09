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

import 'tensorint16bit.dart';

/// @nodoc
const IID_ITensorInt16BitStatics = '{98646293-266e-4b1a-821f-e60d70898b91}';

class ITensorInt16BitStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorInt16BitStatics.fromPtr(super.ptr);

  factory ITensorInt16BitStatics.from(IInspectable interface) =>
      ITensorInt16BitStatics.fromPtr(
          interface.toInterface(IID_ITensorInt16BitStatics));

  TensorInt16Bit? create() {
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

    return TensorInt16Bit.fromPtr(result);
  }

  TensorInt16Bit? create2(IIterable<int>? shape) {
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

    return TensorInt16Bit.fromPtr(result);
  }

  TensorInt16Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final result = calloc<COMObject>();
    final dataArray = calloc<Int16>(data.length);
    for (var i = 0; i < data.length; i++) {
      dataArray[i] = data[i];
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
                            Pointer<Int16> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<Int16> data,
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
        dataArray,
        result);

    free(dataArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorInt16Bit.fromPtr(result);
  }

  TensorInt16Bit? createFromIterable(
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
                    data.toInterface('{72ff2923-4b4e-53bb-8feb-41ec5f2bb734}'))
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

    return TensorInt16Bit.fromPtr(result);
  }
}
