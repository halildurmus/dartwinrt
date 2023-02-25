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
import 'notificationdata.dart';

/// @nodoc
const IID_IToastNotifier2 = '{354389c6-7c01-4bd5-9c20-604340cd2b74}';

/// {@category interface}
class IToastNotifier2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IToastNotifier2.fromRawPointer(super.ptr);

  factory IToastNotifier2.from(IInspectable interface) =>
      IToastNotifier2.fromRawPointer(
          interface.toInterface(IID_IToastNotifier2));

  NotificationUpdateResult updateWithTagAndGroup(
      NotificationData? data, String tag, String group) {
    final retValuePtr = calloc<Int32>();

    final tagHString = convertToHString(tag);
    final groupHString = convertToHString(group);

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL data, IntPtr tag,
                              IntPtr group, Pointer<Int32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL data, int tag, int group,
                      Pointer<Int32>)>()(
          ptr.ref.lpVtbl,
          data == null ? nullptr : data.ptr.ref.lpVtbl,
          tagHString,
          groupHString,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return NotificationUpdateResult.from(retValuePtr.value);
    } finally {
      WindowsDeleteString(tagHString);
      WindowsDeleteString(groupHString);
      free(retValuePtr);
    }
  }

  NotificationUpdateResult updateWithTag(NotificationData? data, String tag) {
    final retValuePtr = calloc<Int32>();

    final tagHString = convertToHString(tag);

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(LPVTBL, LPVTBL data, IntPtr tag,
                              Pointer<Int32>)>>>()
              .value
              .asFunction<
                  int Function(LPVTBL, LPVTBL data, int tag, Pointer<Int32>)>()(
          ptr.ref.lpVtbl,
          data == null ? nullptr : data.ptr.ref.lpVtbl,
          tagHString,
          retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return NotificationUpdateResult.from(retValuePtr.value);
    } finally {
      WindowsDeleteString(tagHString);
      free(retValuePtr);
    }
  }
}
