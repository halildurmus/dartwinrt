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
const IID_ICurrencyAmount = '{74b49942-eb75-443a-95b3-7d723f56f93c}';

class ICurrencyAmount extends IInspectable {
  ICurrencyAmount.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICurrencyAmountVtbl>().ref;

  final _ICurrencyAmountVtbl _vtable;

  factory ICurrencyAmount.from(IInspectable interface) =>
      interface.cast(ICurrencyAmount.fromPtr, IID_ICurrencyAmount);

  String get amount {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Amount.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  String get currency {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_Currency.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }
}

final class _ICurrencyAmountVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Amount;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_Currency;
}
