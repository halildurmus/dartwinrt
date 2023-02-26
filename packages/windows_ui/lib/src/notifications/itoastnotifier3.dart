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

import 'toastnotifier.dart';

/// @nodoc
const IID_IToastNotifier3 = '{ae75a04a-3b0c-51ad-b7e8-b08ab6052549}';

/// {@category interface}
class IToastNotifier3 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IToastNotifier3.fromRawPointer(super.ptr);

  factory IToastNotifier3.from(IInspectable interface) =>
      IToastNotifier3.fromRawPointer(
          interface.toInterface(IID_IToastNotifier3));

  int add_ScheduledToastNotificationShowing(
      Pointer<NativeFunction<TypedEventHandler>> handler) {
    final retValuePtr = calloc<IntPtr>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          LPVTBL,
                          Pointer<NativeFunction<TypedEventHandler>> handler,
                          Pointer<IntPtr>)>>>()
          .value
          .asFunction<
              int Function(
                  LPVTBL,
                  Pointer<NativeFunction<TypedEventHandler>> handler,
                  Pointer<IntPtr>)>()(ptr.ref.lpVtbl, handler, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void remove_ScheduledToastNotificationShowing(int token) {
    final hr = ptr.ref.vtable
        .elementAt(7)
        .cast<Pointer<NativeFunction<HRESULT Function(LPVTBL, IntPtr token)>>>()
        .value
        .asFunction<int Function(LPVTBL, int token)>()(ptr.ref.lpVtbl, token);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
