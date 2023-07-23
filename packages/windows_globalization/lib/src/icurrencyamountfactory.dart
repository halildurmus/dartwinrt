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

import 'currencyamount.dart';

/// @nodoc
const IID_ICurrencyAmountFactory = '{48d7168f-ef3b-4aee-a6a1-4b036fe03ff0}';

class ICurrencyAmountFactory extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICurrencyAmountFactory.fromPtr(super.ptr);

  factory ICurrencyAmountFactory.from(IInspectable interface) =>
      ICurrencyAmountFactory.fromPtr(
          interface.toInterface(IID_ICurrencyAmountFactory));

  CurrencyAmount create(String amount, String currency) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl, IntPtr amount,
                            IntPtr currency, Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(VTablePointer lpVtbl, int amount, int currency,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, amount.toHString(), currency.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return CurrencyAmount.fromPtr(result);
  }
}
