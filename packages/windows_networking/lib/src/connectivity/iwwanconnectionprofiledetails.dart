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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';

/// @nodoc
const IID_IWwanConnectionProfileDetails =
    '{0e4da8fe-835f-4df3-82fd-df556ebc09ef}';

/// {@category interface}
class IWwanConnectionProfileDetails extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IWwanConnectionProfileDetails.fromRawPointer(super.ptr);

  factory IWwanConnectionProfileDetails.from(IInspectable interface) =>
      IWwanConnectionProfileDetails.fromRawPointer(
          interface.toInterface(IID_IWwanConnectionProfileDetails));

  String get homeProviderId {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get accessPointName {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  WwanNetworkRegistrationState getNetworkRegistrationState() {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Int32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Int32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return WwanNetworkRegistrationState.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  WwanDataClass getCurrentDataClass() {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return WwanDataClass.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
