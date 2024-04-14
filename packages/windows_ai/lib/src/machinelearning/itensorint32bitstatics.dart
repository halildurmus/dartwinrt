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

import 'tensorint32bit.dart';

/// @nodoc
const IID_ITensorInt32BitStatics = '{6539864b-52fa-4e35-907c-834cac417b50}';

class ITensorInt32BitStatics extends IInspectable {
  ITensorInt32BitStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt32BitStaticsVtbl>().ref;

  final _ITensorInt32BitStaticsVtbl _vtable;

  factory ITensorInt32BitStatics.from(IInspectable interface) => interface.cast(
      ITensorInt32BitStatics.fromPtr, IID_ITensorInt32BitStatics);

  TensorInt32Bit? create() {
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

    return TensorInt32Bit.fromPtr(result);
  }

  TensorInt32Bit? create2(IIterable<int>? shape) {
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

    return TensorInt32Bit.fromPtr(result);
  }

  TensorInt32Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final result = calloc<COMObject>();
    final dataArray = data.toArray<Int32>();

    final hr = _vtable.CreateFromArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer shape,
                int dataSize,
                Pointer<Int32> data,
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

    return TensorInt32Bit.fromPtr(result);
  }

  TensorInt32Bit? createFromIterable(
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

    return TensorInt32Bit.fromPtr(result);
  }
}

final class _ITensorInt32BitStaticsVtbl extends Struct {
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
              Pointer<Int32> data,
              Pointer<COMObject> result)>> CreateFromArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer shape,
              VTablePointer data,
              Pointer<COMObject> result)>> CreateFromIterable;
}
