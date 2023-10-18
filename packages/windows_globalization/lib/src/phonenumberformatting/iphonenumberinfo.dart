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

import 'phonenumberinfo.dart';
import 'phonenumbermatchresult.dart';
import 'predictedphonenumberkind.dart';

/// @nodoc
const IID_IPhoneNumberInfo = '{1c7ce4dd-c8b4-4ea3-9aef-b342e2c5b417}';

class IPhoneNumberInfo extends IInspectable {
  IPhoneNumberInfo.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IPhoneNumberInfoVtbl>().ref;

  final _IPhoneNumberInfoVtbl _vtable;

  factory IPhoneNumberInfo.from(IInspectable interface) =>
      interface.cast(IPhoneNumberInfo.fromPtr, IID_IPhoneNumberInfo);

  int get countryCode {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_CountryCode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  String get phoneNumber {
    final value = calloc<IntPtr>();

    try {
      final hr = _vtable.get_PhoneNumber.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.toDartString();
    } finally {
      free(value);
    }
  }

  int getLengthOfGeographicalAreaCode() {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.GetLengthOfGeographicalAreaCode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  String getNationalSignificantNumber() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.GetNationalSignificantNumber.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  int getLengthOfNationalDestinationCode() {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.GetLengthOfNationalDestinationCode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  PredictedPhoneNumberKind predictNumberKind() {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.PredictNumberKind.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return PredictedPhoneNumberKind.from(result.value);
    } finally {
      free(result);
    }
  }

  String getGeographicRegionCode() {
    final result = calloc<IntPtr>();

    try {
      final hr = _vtable.GetGeographicRegionCode.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<IntPtr> result)>()(lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.toDartString();
    } finally {
      free(result);
    }
  }

  PhoneNumberMatchResult checkNumberMatch(PhoneNumberInfo? otherNumber) {
    final result = calloc<Int32>();

    try {
      final hr = _vtable.CheckNumberMatch.asFunction<
          int Function(VTablePointer lpVtbl, VTablePointer otherNumber,
              Pointer<Int32> result)>()(lpVtbl, otherNumber.lpVtbl, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return PhoneNumberMatchResult.from(result.value);
    } finally {
      free(result);
    }
  }
}

final class _IPhoneNumberInfoVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_CountryCode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> value)>>
      get_PhoneNumber;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> result)>>
      GetLengthOfGeographicalAreaCode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      GetNationalSignificantNumber;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> result)>>
      GetLengthOfNationalDestinationCode;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> result)>>
      PredictNumberKind;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<IntPtr> result)>>
      GetGeographicRegionCode;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, VTablePointer otherNumber,
              Pointer<Int32> result)>> CheckNumberMatch;
}
