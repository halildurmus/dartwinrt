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

import 'phonenumberformat.dart';
import 'phonenumberinfo.dart';

/// @nodoc
const IID_IPhoneNumberFormatter = '{1556b49e-bad4-4b4a-900d-4407adb7c981}';

class IPhoneNumberFormatter extends IInspectable {
  IPhoneNumberFormatter.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPhoneNumberFormatterVtbl>().ref;

  final _IPhoneNumberFormatterVtbl _vtable;

  factory IPhoneNumberFormatter.from(IInspectable interface) =>
      interface.cast(IPhoneNumberFormatter.fromPtr, IID_IPhoneNumberFormatter);

  String format(PhoneNumberInfo? number) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.Format.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer number,
              Pointer<IntPtr> result)>()(lpVtbl, number.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String formatWithOutputFormat(
      PhoneNumberInfo? number, PhoneNumberFormat numberFormat) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatWithOutputFormat.asFunction<
              int Function(VTablePointer lpVtbl, VTablePointer number,
                  int numberFormat, Pointer<IntPtr> result)>()(
          lpVtbl, number.lpVtbl, numberFormat.value, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String formatPartialString(String number) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatPartialString.asFunction<
          int Function(VTablePointer lpVtbl, int number,
              Pointer<IntPtr> result)>()(lpVtbl, number.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String formatString(String number) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatString.asFunction<
          int Function(VTablePointer lpVtbl, int number,
              Pointer<IntPtr> result)>()(lpVtbl, number.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  String formatStringWithLeftToRightMarkers(String number) {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.FormatStringWithLeftToRightMarkers.asFunction<
          int Function(VTablePointer lpVtbl, int number,
              Pointer<IntPtr> result)>()(lpVtbl, number.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }
}

final class _IPhoneNumberFormatterVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer number,
              Pointer<IntPtr> result)>> Format;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer number,
              Int32 numberFormat,
              Pointer<IntPtr> result)>> FormatWithOutputFormat;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr number, Pointer<IntPtr> result)>>
      FormatPartialString;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr number, Pointer<IntPtr> result)>>
      FormatString;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, IntPtr number, Pointer<IntPtr> result)>>
      FormatStringWithLeftToRightMarkers;
}
