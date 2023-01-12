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

import '../../../internal.dart';
import 'winrt_callbacks.dart';
import 'winrt_helpers.dart';

/// @nodoc
const IID_IUriRuntimeClassWithAbsoluteCanonicalUri =
    '{758d9661-221c-480f-a339-50656673f46f}';

/// {@category Interface}
/// {@category winrt}
class IUriRuntimeClassWithAbsoluteCanonicalUri extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IUriRuntimeClassWithAbsoluteCanonicalUri.fromRawPointer(super.ptr);

  factory IUriRuntimeClassWithAbsoluteCanonicalUri.from(
          IInspectable interface) =>
      IUriRuntimeClassWithAbsoluteCanonicalUri.fromRawPointer(
          interface.toInterface(IID_IUriRuntimeClassWithAbsoluteCanonicalUri));

  String get absoluteCanonicalUri {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String get displayIri {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(Pointer, Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, Pointer<IntPtr>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.toDartString();
      return retValue;
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
