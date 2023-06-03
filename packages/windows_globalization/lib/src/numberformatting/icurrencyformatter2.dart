// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'currencyformattermode.dart';
import 'roundingalgorithm.dart';

/// @nodoc
const IID_ICurrencyFormatter2 = '{072c2f1d-e7ba-4197-920e-247c92f7dea6}';

class ICurrencyFormatter2 extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  ICurrencyFormatter2.fromPtr(super.ptr);

  factory ICurrencyFormatter2.from(IInspectable interface) =>
      ICurrencyFormatter2.fromPtr(
          interface.toInterface(IID_ICurrencyFormatter2));

  CurrencyFormatterMode get mode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return CurrencyFormatterMode.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set mode(CurrencyFormatterMode value) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, Int32 value)>>>()
            .value
            .asFunction<int Function(VTablePointer lpVtbl, int value)>()(
        ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void applyRoundingForCurrency(RoundingAlgorithm roundingAlgorithm) {
    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl, Int32 roundingAlgorithm)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int roundingAlgorithm)>()(
        ptr.ref.lpVtbl, roundingAlgorithm.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
