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

/// @nodoc
const IID_INumberFormatter = '{a5007c49-7676-4db7-8631-1b6ff265caa9}';

class INumberFormatter extends IInspectable {
  INumberFormatter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_INumberFormatterVtbl>().ref;

  final _INumberFormatterVtbl _vtable;

  factory INumberFormatter.from(IInspectable interface) =>
      interface.cast(INumberFormatter.fromPtr, IID_INumberFormatter);

  String formatInt(int value) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatInt.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<IntPtr> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String formatUInt(int value) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatUInt.asFunction<
          int Function(VTablePointer lpVtbl, int value,
              Pointer<IntPtr> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String formatDouble(double value) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatDouble.asFunction<
          int Function(VTablePointer lpVtbl, double value,
              Pointer<IntPtr> result)>()(lpVtbl, value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}

final class _INumberFormatterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Int64 value, Pointer<IntPtr> result)>>
      FormatInt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint64 value, Pointer<IntPtr> result)>>
      FormatUInt;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Double value, Pointer<IntPtr> result)>>
      FormatDouble;
}
