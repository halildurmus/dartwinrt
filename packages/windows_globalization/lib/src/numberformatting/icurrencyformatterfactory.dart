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

import 'currencyformatter.dart';

/// @nodoc
const IID_ICurrencyFormatterFactory = '{86c7537e-b938-4aa2-84b0-2c33dc5b1450}';

class ICurrencyFormatterFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ICurrencyFormatterFactory.fromPtr(super.ptr);

  factory ICurrencyFormatterFactory.from(IInspectable interface) => interface
      .cast(ICurrencyFormatterFactory.fromPtr, IID_ICurrencyFormatterFactory);

  CurrencyFormatter createCurrencyFormatterCode(String currencyCode) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl, IntPtr currencyCode,
                        Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                int currencyCode,
                Pointer<COMObject>
                    result)>()(ptr.ref.lpVtbl, currencyCode.toHString(), result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return CurrencyFormatter.fromPtr(result);
  }

  CurrencyFormatter createCurrencyFormatterCodeContext(String currencyCode,
      IIterable<String>? languages, String geographicRegion) {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            IntPtr currencyCode,
                            VTablePointer languages,
                            IntPtr geographicRegion,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int currencyCode,
                    VTablePointer languages,
                    int geographicRegion,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl,
        currencyCode.toHString(),
        languages.lpVtbl,
        geographicRegion.toHString(),
        result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return CurrencyFormatter.fromPtr(result);
  }
}
