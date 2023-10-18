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
const IID_ICivicAddress = '{a8567a1a-64f4-4d48-bcea-f6b008eca34c}';

class ICivicAddress extends IInspectable {
  ICivicAddress.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICivicAddressVtbl>().ref;

  final _ICivicAddressVtbl _vtable;

  factory ICivicAddress.from(IInspectable interface) =>
      interface.cast(ICivicAddress.fromPtr, IID_ICivicAddress);

  String get country {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Country.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get state {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_State.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get city {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_City.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get postalCode {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_PostalCode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  DateTime get timestamp {
    final value = calloc<Int64>();

    try {
      final hr = _vtable.get_Timestamp.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int64> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartDateTime();
    } finally {
      free(value);
    }
  }
}

final class _ICivicAddressVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Country;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_State;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_City;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_PostalCode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int64> value)>>
      get_Timestamp;
}
