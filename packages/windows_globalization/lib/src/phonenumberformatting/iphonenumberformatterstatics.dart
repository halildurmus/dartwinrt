// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'phonenumberformatter.dart';

/// @nodoc
const IID_IPhoneNumberFormatterStatics =
    '{5ca6f931-84d9-414b-ab4e-a0552c878602}';

/// {@category interface}
class IPhoneNumberFormatterStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IPhoneNumberFormatterStatics.fromRawPointer(super.ptr);

  factory IPhoneNumberFormatterStatics.from(IInspectable interface) =>
      IPhoneNumberFormatterStatics.fromRawPointer(
          interface.toInterface(IID_IPhoneNumberFormatterStatics));

  void tryCreate(String regionCode, PhoneNumberFormatter phoneNumber) {
    final regionCodeHString = convertToHString(regionCode);

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL lpVtbl, IntPtr regionCode,
                            Pointer<COMObject> phoneNumber)>>>()
            .value
            .asFunction<
                int Function(LPVTBL lpVtbl, int regionCode,
                    Pointer<COMObject> phoneNumber)>()(
        ptr.ref.lpVtbl, regionCodeHString, phoneNumber.ptr);

    if (FAILED(hr)) throw WindowsException(hr);

    WindowsDeleteString(regionCodeHString);
  }

  int getCountryCodeForRegion(String regionCode) {
    final retValuePtr = calloc<Int32>();
    final regionCodeHString = convertToHString(regionCode);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr regionCode,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int regionCode,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, regionCodeHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      WindowsDeleteString(regionCodeHString);
      free(retValuePtr);
    }
  }

  String getNationalDirectDialingPrefixForRegion(
      String regionCode, bool stripNonDigit) {
    final retValuePtr = calloc<HSTRING>();
    final regionCodeHString = convertToHString(regionCode);

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  LPVTBL lpVtbl,
                                  IntPtr regionCode,
                                  Bool stripNonDigit,
                                  Pointer<IntPtr> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(LPVTBL lpVtbl, int regionCode,
                          bool stripNonDigit, Pointer<IntPtr> retValuePtr)>()(
              ptr.ref.lpVtbl, regionCodeHString, stripNonDigit, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(regionCodeHString);

      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String wrapWithLeftToRightMarkers(String number) {
    final retValuePtr = calloc<HSTRING>();
    final numberHString = convertToHString(number);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr number,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int number,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, numberHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(numberHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
