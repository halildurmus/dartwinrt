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

import 'currencyamount.dart';

/// @nodoc
const IID_ICurrencyAmountFactory = '{48d7168f-ef3b-4aee-a6a1-4b036fe03ff0}';

class ICurrencyAmountFactory extends IInspectable {
  ICurrencyAmountFactory.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_ICurrencyAmountFactoryVtbl>().ref;

  final _ICurrencyAmountFactoryVtbl _vtable;

  factory ICurrencyAmountFactory.from(IInspectable interface) => interface.cast(
      ICurrencyAmountFactory.fromPtr, IID_ICurrencyAmountFactory);

  CurrencyAmount create(String amount, String currency) {
    final result = calloc<COMObject>();

    final hr = _vtable.Create.asFunction<
            int Function(VTablePointer lpVtbl, int amount, int currency,
                Pointer<COMObject> result)>()(
        lpVtbl, amount.toHString(), currency.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return CurrencyAmount.fromPtr(result);
  }
}

final class _ICurrencyAmountFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, IntPtr amount, IntPtr currency,
              Pointer<COMObject> result)>> Create;
}
