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
const IID_ICurrencyIdentifiersStatics3 =
    '{4fb23bfa-ed25-4f4d-857f-237f1748c21c}';

class ICurrencyIdentifiersStatics3 extends IInspectable {
  ICurrencyIdentifiersStatics3.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICurrencyIdentifiersStatics3Vtbl>().ref;

  final _ICurrencyIdentifiersStatics3Vtbl _vtable;

  factory ICurrencyIdentifiersStatics3.from(IInspectable interface) =>
      interface.cast(ICurrencyIdentifiersStatics3.fromPtr,
          IID_ICurrencyIdentifiersStatics3);

  String get mru {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_MRU.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get ssp {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_SSP.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get stn {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_STN.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get ves {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_VES.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ICurrencyIdentifiersStatics3Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_MRU;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_SSP;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_STN;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_VES;
}
