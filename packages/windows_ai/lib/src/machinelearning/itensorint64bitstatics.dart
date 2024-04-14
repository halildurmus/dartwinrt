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

import 'tensorint64bit.dart';

/// @nodoc
const IID_ITensorInt64BitStatics = '{9648ad9d-1198-4d74-9517-783ab62b9cc2}';

class ITensorInt64BitStatics extends IInspectable {
  ITensorInt64BitStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt64BitStaticsVtbl>().ref;

  final _ITensorInt64BitStaticsVtbl _vtable;

  factory ITensorInt64BitStatics.from(IInspectable interface) => interface.cast(
      ITensorInt64BitStatics.fromPtr, IID_ITensorInt64BitStatics);

  TensorInt64Bit? create() {
    final result = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

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

  TensorInt64Bit? create2(IIterable<int>? shape) {
    final result = calloc<COMObject>();

    final hr = _vtable.Create2.asFunction<
        int Function(VTablePointer lpVtbl, VTablePointer shape,
            Pointer<COMObject> result)>()(lpVtbl, shape.lpVtbl, result);

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

  TensorInt64Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final result = calloc<COMObject>();
    final dataArray = data.toArray<Int64>();

    final hr = _vtable.CreateFromArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer shape,
                int dataSize,
                Pointer<Int64> data,
                Pointer<COMObject> result)>()(
        lpVtbl, shape.lpVtbl, data.length, dataArray, result);

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

  TensorInt64Bit? createFromIterable(
      IIterable<int>? shape, IIterable<int>? data) {
    final result = calloc<COMObject>();

    final hr = _vtable.CreateFromIterable.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer shape,
                VTablePointer data, Pointer<COMObject> result)>()(
        lpVtbl, shape.lpVtbl, data.lpVtbl, result);

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

final class _ITensorInt64BitStaticsVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, Pointer<COMObject> result)>> Create;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer shape,
              Pointer<COMObject> result)>> Create2;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer shape,
              Uint32 dataSize,
              Pointer<Int64> data,
              Pointer<COMObject> result)>> CreateFromArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer shape,
              VTablePointer data,
              Pointer<COMObject> result)>> CreateFromIterable;
}
