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
  // vtable begins at 6, is 6 entries long.
  INumberRounder.fromPtr(super.ptr);

  factory INumberRounder.from(IInspectable interface) =>
      interface.cast(INumberRounder.fromPtr, IID_INumberRounder);

  int roundInt32(int value) {
    final result = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int32 value,
                          Pointer<Int32> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Int32> result)>()(ptr.ref.lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int roundUInt32(int value) {
    final result = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint32 value,
                          Pointer<Uint32> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint32> result)>()(ptr.ref.lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int roundInt64(int value) {
    final result = calloc<Int64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Int64 value,
                          Pointer<Int64> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Int64> result)>()(ptr.ref.lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  int roundUInt64(int value) {
    final result = calloc<Uint64>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Uint64 value,
                          Pointer<Uint64> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, int value,
                  Pointer<Uint64> result)>()(ptr.ref.lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  double roundSingle(double value) {
    final result = calloc<Float>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Float value,
                          Pointer<Float> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, double value,
                  Pointer<Float> result)>()(ptr.ref.lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  double roundDouble(double value) {
    final result = calloc<Double>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(VTablePointer lpVtbl, Double value,
                          Pointer<Double> result)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl, double value,
                  Pointer<Double> result)>()(ptr.ref.lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
