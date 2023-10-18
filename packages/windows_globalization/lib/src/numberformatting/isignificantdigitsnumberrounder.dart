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

import 'roundingalgorithm.dart';

/// @nodoc
const IID_ISignificantDigitsNumberRounder =
    '{f5941bca-6646-4913-8c76-1b191ff94dfd}';

class ISignificantDigitsNumberRounder extends IInspectable {
  ISignificantDigitsNumberRounder.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ISignificantDigitsNumberRounderVtbl>().ref;

  final _ISignificantDigitsNumberRounderVtbl _vtable;

  factory ISignificantDigitsNumberRounder.from(IInspectable interface) =>
      interface.cast(ISignificantDigitsNumberRounder.fromPtr,
          IID_ISignificantDigitsNumberRounder);

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

  int get significantDigits {
    final value = calloc<Uint32>();

    try {
      final hr = _vtable.get_SignificantDigits.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Uint32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  set significantDigits(int value) {
    final hr = _vtable.put_SignificantDigits
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        lpVtbl, value);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ISignificantDigitsNumberRounderVtbl extends Struct {
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
              HRESULT Function(VTablePointer lpVtbl, Pointer<Uint32> value)>>
      get_SignificantDigits;
  external Pointer<
          NativeFunction<HRESULT Function(VTablePointer lpVtbl, Uint32 value)>>
      put_SignificantDigits;
}
