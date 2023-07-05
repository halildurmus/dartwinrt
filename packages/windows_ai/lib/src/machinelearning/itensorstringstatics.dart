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
const IID_ITensorStringStatics = '{83623324-cf26-4f17-a2d4-20ef8d097d53}';

class ITensorStringStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorStringStatics.fromPtr(super.ptr);

  factory ITensorStringStatics.from(IInspectable interface) =>
      ITensorStringStatics.fromPtr(
          interface.toInterface(IID_ITensorStringStatics));

  TensorString? create() {
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

    return TensorString.fromPtr(result);
  }

  TensorString? create2(IIterable<int>? shape) {
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

    return TensorString.fromPtr(result);
  }

  TensorString? createFromArray(IIterable<int>? shape, List<String> data) {
    final result = calloc<COMObject>();
    final dataHandles = <int>[];
    final pDataArray = calloc<HSTRING>(data.length);
    for (var i = 0; i < data.length; i++) {
      pDataArray[i] = data[i].toHString();
      dataHandles.add(pDataArray[i]);
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
                            Pointer<IntPtr> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<IntPtr> data,
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

    dataHandles.forEach(WindowsDeleteString);
    free(pDataArray);

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

  TensorString? createFromIterable(
      IIterable<int>? shape, IIterable<String>? data) {
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
                    data.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
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

    return TensorString.fromPtr(result);
  }
}
