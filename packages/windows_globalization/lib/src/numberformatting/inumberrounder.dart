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

/// @nodoc
const IID_INumberRounder = '{5473c375-38ed-4631-b80c-ef34fc48b7f5}';

/// An interface that returns rounded results for provided numbers of several
/// data types.
class INumberRounder extends IInspectable {
  INumberRounder.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INumberRounderVtbl>().ref;

  final _INumberRounderVtbl _vtable;

  factory INumberRounder.from(IInspectable interface) =>
      interface.cast(INumberRounder.fromPtr, IID_INumberRounder);

  int roundInt32(int value) {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.RoundInt32.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<Int32> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int roundUInt32(int value) {
    final result = calloc<Uint32>();

    try {
      final hr = _vtable.RoundUInt32.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<Uint32> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int roundInt64(int value) {
    final result = calloc<Int64>();

    try {
      final hr = _vtable.RoundInt64.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<Int64> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int roundUInt64(int value) {
    final result = calloc<Uint64>();

    try {
      final hr = _vtable.RoundUInt64.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<Uint64> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  double roundSingle(double value) {
    final result = calloc<Float>();

    try {
      final hr = _vtable.RoundSingle.asFunction<
          int Function(VTablePointer lpVtbl, double value,
              Pointer<Float> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  double roundDouble(double value) {
    final result = calloc<Double>();

    try {
      final hr = _vtable.RoundDouble.asFunction<
          int Function(VTablePointer lpVtbl, double value,
              Pointer<Double> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _INumberRounderVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int32 value, Pointer<Int32> result)>>
      RoundInt32;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 value, Pointer<Uint32> result)>>
      RoundUInt32;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int64 value, Pointer<Int64> result)>>
      RoundInt64;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint64 value, Pointer<Uint64> result)>>
      RoundUInt64;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Float value, Pointer<Float> result)>>
      RoundSingle;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Double value, Pointer<Double> result)>>
      RoundDouble;
}
