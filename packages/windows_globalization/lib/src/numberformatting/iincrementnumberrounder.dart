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

import 'roundingalgorithm.dart';

/// @nodoc
const IID_IIncrementNumberRounder = '{70a64ff8-66ab-4155-9da1-739e46764543}';

class IIncrementNumberRounder extends IInspectable {
  IIncrementNumberRounder.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IIncrementNumberRounderVtbl>().ref;

  final _IIncrementNumberRounderVtbl _vtable;

  factory IIncrementNumberRounder.from(IInspectable interface) => interface
      .cast(IIncrementNumberRounder.fromPtr, IID_IIncrementNumberRounder);

  RoundingAlgorithm get roundingAlgorithm {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_RoundingAlgorithm.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return RoundingAlgorithm.from(value.value);
    } finally {
      free(value);
    }
  }

  set roundingAlgorithm(RoundingAlgorithm value) {
    final hr = _vtable.put_RoundingAlgorithm
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value.value);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  double get increment {
    final value = calloc<Double>();

    try {
      final hr = _vtable.get_Increment.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Double> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set increment(double value) {
    final hr = _vtable.put_Increment
            .asFunction<int Function(VTablePointer lpVtbl, double value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _IIncrementNumberRounderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_RoundingAlgorithm;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Int32 value)>>
      put_RoundingAlgorithm;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Double> value)>>
      get_Increment;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Double value)>>
      put_Increment;
}
