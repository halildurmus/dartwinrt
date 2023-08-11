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

import 'phonenumberformatter.dart';

/// @nodoc
const IID_IPhoneNumberFormatterStatics =
    '{5ca6f931-84d9-414b-ab4e-a0552c878602}';

class IPhoneNumberFormatterStatics extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IPhoneNumberFormatterStatics.fromPtr(super.ptr);

  factory IPhoneNumberFormatterStatics.from(IInspectable interface) =>
      interface.cast(IPhoneNumberFormatterStatics.fromPtr,
          IID_IPhoneNumberFormatterStatics);

  PhoneNumberFormatter? tryCreate(String regionCode) {
    final phoneNumber = calloc<COMObject>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr regionCode,
                                  Pointer<COMObject> phoneNumber)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int regionCode,
                          Pointer<COMObject> phoneNumber)>()(
              ptr.ref.lpVtbl, regionCode.toHString(), phoneNumber);

      if (FAILED(hr)) {
        free(phoneNumber);
        throwWindowsException(hr);
      }

      if (phoneNumber.isNull) {
        free(phoneNumber);
        return null;
      }

      return PhoneNumberFormatter.fromPtr(phoneNumber);
    } finally {}
  }

  int getCountryCodeForRegion(String regionCode) {
    final result = calloc<Int32>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(VTablePointer lpVtbl,
                                  IntPtr regionCode, Pointer<Int32> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int regionCode,
                          Pointer<Int32> result)>()(
              ptr.ref.lpVtbl, regionCode.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  String getNationalDirectDialingPrefixForRegion(
      String regionCode, bool stripNonDigit) {
    final result = calloc<IntPtr>();

    try {
      final hr =
          ptr.ref.vtable
                  .elementAt(8)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  IntPtr regionCode,
                                  Bool stripNonDigit,
                                  Pointer<IntPtr> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, int regionCode,
                          bool stripNonDigit, Pointer<IntPtr> result)>()(
              ptr.ref.lpVtbl, regionCode.toHString(), stripNonDigit, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String wrapWithLeftToRightMarkers(String number) {
    final result = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, IntPtr number,
                              Pointer<IntPtr> result)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int number,
                      Pointer<IntPtr> result)>()(
          ptr.ref.lpVtbl, number.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}
