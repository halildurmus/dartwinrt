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
const IID_IPhoneNumberInfoStatics = '{5b3f4f6a-86a9-40e9-8649-6d61161928d4}';

/// {@category interface}
class IPhoneNumberInfoStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPhoneNumberInfoStatics.fromRawPointer(super.ptr);

  factory IPhoneNumberInfoStatics.from(IInspectable interface) =>
      IPhoneNumberInfoStatics.fromRawPointer(
          interface.toInterface(IID_IPhoneNumberInfoStatics));

  PhoneNumberParseResult tryParse(String input, PhoneNumberInfo phoneNumber) {
    final retValuePtr = calloc<Int32>();
    final inputHString = convertToHString(input);

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              IntPtr input,
                              Pointer<COMObject> phoneNumber,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl,
                      int input,
                      Pointer<COMObject> phoneNumber,
                      Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, inputHString, phoneNumber.ptr, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PhoneNumberParseResult.from(retValuePtr.value);
    } finally {
      WindowsDeleteString(inputHString);

      free(retValuePtr);
    }
  }

  PhoneNumberParseResult tryParseWithRegion(
      String input, String regionCode, PhoneNumberInfo phoneNumber) {
    final retValuePtr = calloc<Int32>();
    final inputHString = convertToHString(input);
    final regionCodeHString = convertToHString(regionCode);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl,
                              IntPtr input,
                              IntPtr regionCode,
                              Pointer<COMObject> phoneNumber,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(
                      LPVTBL lpVtbl,
                      int input,
                      int regionCode,
                      Pointer<COMObject> phoneNumber,
                      Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl,
          inputHString, regionCodeHString, phoneNumber.ptr, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return PhoneNumberParseResult.from(retValuePtr.value);
    } finally {
      WindowsDeleteString(inputHString);
      WindowsDeleteString(regionCodeHString);

      free(retValuePtr);
    }
  }
}
