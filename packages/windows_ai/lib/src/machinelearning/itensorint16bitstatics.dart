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

import 'tensorint16bit.dart';

/// @nodoc
const IID_ITensorInt16BitStatics = '{98646293-266e-4b1a-821f-e60d70898b91}';

class ITensorInt16BitStatics extends IInspectable {
  ITensorInt16BitStatics.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ITensorInt16BitStaticsVtbl>().ref;

  final _ITensorInt16BitStaticsVtbl _vtable;

  factory ITensorInt16BitStatics.from(IInspectable interface) => interface.cast(
      ITensorInt16BitStatics.fromPtr, IID_ITensorInt16BitStatics);

  TensorInt16Bit? create() {
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

    return TensorInt16Bit.fromPtr(result);
  }

  TensorInt16Bit? create2(IIterable<int>? shape) {
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

    return TensorInt16Bit.fromPtr(result);
  }

  TensorInt16Bit? createFromArray(IIterable<int>? shape, List<int> data) {
    final result = calloc<COMObject>();
    final dataArray = data.toArray<Int16>();

    final hr = _vtable.CreateFromArray.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer shape,
                int dataSize,
                Pointer<Int16> data,
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

    return TensorInt16Bit.fromPtr(result);
  }

  TensorInt16Bit? createFromIterable(
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

    return TensorInt16Bit.fromPtr(result);
  }
}

final class _ITensorInt16BitStaticsVtbl extends Struct {
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
              Pointer<Int16> data,
              Pointer<COMObject> result)>> CreateFromArray;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer shape,
              VTablePointer data,
              Pointer<COMObject> result)>> CreateFromIterable;
}
