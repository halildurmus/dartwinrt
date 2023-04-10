// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'currencyformatter.dart';

/// @nodoc
const IID_ICurrencyFormatterFactory = '{86c7537e-b938-4aa2-84b0-2c33dc5b1450}';

/// {@category interface}
class ICurrencyFormatterFactory extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ICurrencyFormatterFactory.fromPtr(super.ptr);

  factory ICurrencyFormatterFactory.from(IInspectable interface) =>
      ICurrencyFormatterFactory.fromPtr(
          interface.toInterface(IID_ICurrencyFormatterFactory));

  CurrencyFormatter createCurrencyFormatterCode(String currencyCode) {
    final retValuePtr = calloc<COMObject>();
    final currencyCodeHString = currencyCode.toHString();

    final hr =
        ptr.ref.vtable
                .elementAt(6)
                .cast<
                    Pointer<
                        NativeFunction<
                            HRESULT Function(
                                VTablePointer lpVtbl,
                                IntPtr currencyCode,
                                Pointer<COMObject> retValuePtr)>>>()
                .value
                .asFunction<
                    int Function(VTablePointer lpVtbl, int currencyCode,
                        Pointer<COMObject> retValuePtr)>()(
            ptr.ref.lpVtbl, currencyCodeHString, retValuePtr);

    WindowsDeleteString(currencyCodeHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return CurrencyFormatter.fromPtr(retValuePtr);
  }

  CurrencyFormatter createCurrencyFormatterCodeContext(String currencyCode,
      IIterable<String> languages, String geographicRegion) {
    final retValuePtr = calloc<COMObject>();
    final currencyCodeHString = currencyCode.toHString();
    final languagesPtr = IInspectable(
            languages.toInterface('{e2fcc7c1-3bfc-5a0b-b2b0-72e769d1cb7e}'))
        .ptr
        .ref
        .lpVtbl;
    final geographicRegionHString = geographicRegion.toHString();

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
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int currencyCode,
                    VTablePointer languages,
                    int geographicRegion,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl,
        currencyCodeHString,
        languagesPtr,
        geographicRegionHString,
        retValuePtr);

    WindowsDeleteString(currencyCodeHString);
    WindowsDeleteString(geographicRegionHString);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    return CurrencyFormatter.fromPtr(retValuePtr);
  }
}
