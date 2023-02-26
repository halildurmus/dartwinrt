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

import 'enums.g.dart';
import 'phonenumberinfo.dart';

/// @nodoc
const IID_IPhoneNumberFormatter = '{1556b49e-bad4-4b4a-900d-4407adb7c981}';

/// {@category interface}
class IPhoneNumberFormatter extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IPhoneNumberFormatter.fromRawPointer(super.ptr);

  factory IPhoneNumberFormatter.from(IInspectable interface) =>
      IPhoneNumberFormatter.fromRawPointer(
          interface.toInterface(IID_IPhoneNumberFormatter));

  String format(PhoneNumberInfo? number) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, LPVTBL number, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL number, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl,
          number == null ? nullptr : number.ptr.ref.lpVtbl,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatWithOutputFormat(
      PhoneNumberInfo? number, PhoneNumberFormat numberFormat) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL number,
                              Int32 numberFormat, Pointer<IntPtr>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL number, int numberFormat,
                      Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl,
          number == null ? nullptr : number.ptr.ref.lpVtbl,
          numberFormat.value,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatPartialString(String number) {
    final retValuePtr = calloc<HSTRING>();
    final numberHString = convertToHString(number);

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, IntPtr number, Pointer<IntPtr>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int number, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, numberHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(numberHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatString(String number) {
    final retValuePtr = calloc<HSTRING>();
    final numberHString = convertToHString(number);

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, IntPtr number, Pointer<IntPtr>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int number, Pointer<IntPtr>)>()(
          ptr.ref.lpVtbl, numberHString, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(numberHString);
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String formatStringWithLeftToRightMarkers(String number) {
    final retValuePtr = calloc<HSTRING>();
    final numberHString = convertToHString(number);

    try {
      final hr = ptr.ref.vtable
              .elementAt(10)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL, IntPtr number, Pointer<IntPtr>)>>>()
              .value
              .asFunction<int Function(LPVTBL, int number, Pointer<IntPtr>)>()(
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
