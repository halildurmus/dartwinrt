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

/// @nodoc
const IID_IToastNotification3 = '{31e8aed8-8141-4f99-bc0a-c4ed21297d77}';

/// {@category interface}
class IToastNotification3 extends IInspectable {
  // vtable begins at 6, is 4 entries long.
  IToastNotification3.fromRawPointer(super.ptr);

  factory IToastNotification3.from(IInspectable interface) =>
      IToastNotification3.fromRawPointer(
          interface.toInterface(IID_IToastNotification3));

  NotificationMirroring get notificationMirroring {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return NotificationMirroring.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  set notificationMirroring(NotificationMirroring value) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL lpVtbl, Int32 value)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL lpVtbl, int value)>()(ptr.ref.lpVtbl, value.value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  String get remoteId {
    final retValuePtr = calloc<HSTRING>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL lpVtbl, Pointer<IntPtr> retValuePtr)>()(
          ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.toDartString();
    } finally {
      WindowsDeleteString(retValuePtr.value);
      free(retValuePtr);
    }
  }

  set remoteId(String value) {
    final hString = value.toHString();

    try {
      final hr = ptr.ref.vtable
              .elementAt(9)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL lpVtbl, IntPtr value)>>>()
              .value
              .asFunction<int Function(LPVTBL lpVtbl, int value)>()(
          ptr.ref.lpVtbl, hString);

      if (FAILED(hr)) throw WindowsException(hr);
    } finally {
      WindowsDeleteString(hString);
    }
  }
}
