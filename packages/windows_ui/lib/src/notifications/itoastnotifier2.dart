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

import 'notificationdata.dart';
import 'notificationupdateresult.dart';

/// @nodoc
const IID_IToastNotifier2 = '{354389c6-7c01-4bd5-9c20-604340cd2b74}';

class IToastNotifier2 extends IInspectable {
  IToastNotifier2.fromPtr(super.ptr);

  factory IToastNotifier2.from(IInspectable interface) =>
      interface.cast(IToastNotifier2.fromPtr, IID_IToastNotifier2);

  NotificationUpdateResult updateWithTagAndGroup(
      NotificationData? data, String tag, String group) {
    final result = calloc<Int32>();

    try {
      final hr =
          vtable
                  .elementAt(6)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer data,
                                  IntPtr tag,
                                  IntPtr group,
                                  Pointer<Int32> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer data,
                          int tag, int group, Pointer<Int32> result)>()(
              lpVtbl, data.lpVtbl, tag.toHString(), group.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return NotificationUpdateResult.from(result.value);
    } finally {
      free(result);
    }
  }

  NotificationUpdateResult updateWithTag(NotificationData? data, String tag) {
    final result = calloc<Int32>();

    try {
      final hr =
          vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer data,
                                  IntPtr tag,
                                  Pointer<Int32> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer data,
                          int tag, Pointer<Int32> result)>()(
              lpVtbl, data.lpVtbl, tag.toHString(), result);

      if (FAILED(hr)) throwWindowsException(hr);

      return NotificationUpdateResult.from(result.value);
    } finally {
      free(result);
    }
  }
}
