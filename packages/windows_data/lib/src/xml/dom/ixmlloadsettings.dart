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

/// @nodoc
const IID_IXmlLoadSettings = '{58aa07a8-fed6-46f7-b4c5-fb1ba72108d6}';

/// {@category interface}
class IXmlLoadSettings extends IInspectable {
  // vtable begins at 6, is 10 entries long.
  IXmlLoadSettings.fromRawPointer(super.ptr);

  factory IXmlLoadSettings.from(IInspectable interface) =>
      IXmlLoadSettings.fromRawPointer(
          interface.toInterface(IID_IXmlLoadSettings));

  int get maxElementDepth {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Uint32>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Uint32>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set maxElementDepth(int value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Uint32 value)>>>()
        .value
        .asFunction<int Function(LPVTBL, int value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get prohibitDtd {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set prohibitDtd(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Bool value)>>>()
        .value
        .asFunction<int Function(LPVTBL, bool value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get resolveExternals {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set resolveExternals(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Bool value)>>>()
        .value
        .asFunction<int Function(LPVTBL, bool value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get validateOnParse {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set validateOnParse(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(13)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Bool value)>>>()
        .value
        .asFunction<int Function(LPVTBL, bool value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool get elementContentWhiteSpace {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<HRESULT Function(LPVTBL, Pointer<Bool>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL, Pointer<Bool>)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  set elementContentWhiteSpace(bool value) {
    final hr = ptr.ref.vtable
        .elementAt(15)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, Bool value)>>>()
        .value
        .asFunction<int Function(LPVTBL, bool value)>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
