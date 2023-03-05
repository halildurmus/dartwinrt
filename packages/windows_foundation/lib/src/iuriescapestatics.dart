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

import '../internal.dart';
import 'collections/iiterator.dart';
import 'helpers.dart';
import 'iinspectable.dart';

/// @nodoc
const IID_IUriEscapeStatics = '{c1d432ba-c824-4452-a7fd-512bc3bbe9a1}';

/// {@category interface}
class IUriEscapeStatics extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IUriEscapeStatics.fromRawPointer(super.ptr);

  factory IUriEscapeStatics.from(IInspectable interface) =>
      IUriEscapeStatics.fromRawPointer(
          interface.toInterface(IID_IUriEscapeStatics));

  String unescapeComponent(String toUnescape) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final toUnescapeHString = toUnescape.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr toUnescape,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int toUnescape,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, toUnescapeHString, retValuePtr);

      WindowsDeleteString(toUnescapeHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  String escapeComponent(String toEscape) {
    final retValuePtr = calloc<HSTRING>();

    try {
      final toEscapeHString = toEscape.toHString();

      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr toEscape,
                              Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, int toEscape,
                      Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, toEscapeHString, retValuePtr);

      WindowsDeleteString(toEscapeHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }
}
