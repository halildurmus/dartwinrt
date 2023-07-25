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

import 'tensorfloat16bit.dart';

/// @nodoc
const IID_ITensorFloat16BitStatics = '{a52db6f5-318a-44d4-820b-0cdc7054a84a}';

class ITensorFloat16BitStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  ITensorFloat16BitStatics.fromPtr(super.ptr);

  factory ITensorFloat16BitStatics.from(IInspectable interface) =>
      ITensorFloat16BitStatics.fromPtr(
          interface.toInterface(IID_ITensorFloat16BitStatics));

  TensorFloat16Bit? create() {
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

    return TensorFloat16Bit.fromPtr(result);
  }

  TensorFloat16Bit? create2(IIterable<int>? shape) {
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
            int Function(
                VTablePointer lpVtbl,
                VTablePointer shape,
                Pointer<COMObject>
                    result)>()(ptr.ref.lpVtbl, shape.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorFloat16Bit.fromPtr(result);
  }

  TensorFloat16Bit? createFromArray(IIterable<int>? shape, List<double> data) {
    final result = calloc<COMObject>();
    final dataArray = data.toArray<Float>();

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            VTablePointer shape,
                            Uint32 dataSize,
                            Pointer<Float> data,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    VTablePointer shape,
                    int dataSize,
                    Pointer<Float> data,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, shape.lpVtbl, data.length, dataArray, result);

    free(dataArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorFloat16Bit.fromPtr(result);
  }

  TensorFloat16Bit? createFromIterable(
      IIterable<int>? shape, IIterable<double>? data) {
    final result = calloc<COMObject>();

    final hr =
        ptr.ref.vtable
                .elementAt(9)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                VTablePointer shape,
                                VTablePointer data,
                                Pointer<COMObject> result)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, VTablePointer shape,
                        VTablePointer data, Pointer<COMObject> result)>()(
            ptr.ref.lpVtbl, shape.lpVtbl, data.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return TensorFloat16Bit.fromPtr(result);
  }
}
