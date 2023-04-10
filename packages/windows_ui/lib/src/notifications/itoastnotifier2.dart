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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'notificationdata.dart';
import 'notificationupdateresult.dart';

/// @nodoc
const IID_IToastNotifier2 = '{354389c6-7c01-4bd5-9c20-604340cd2b74}';

/// {@category interface}
class IToastNotifier2 extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IToastNotifier2.fromPtr(super.ptr);

  factory IToastNotifier2.from(IInspectable interface) =>
      IToastNotifier2.fromPtr(interface.toInterface(IID_IToastNotifier2));

  NotificationUpdateResult updateWithTagAndGroup(
      NotificationData? data, String tag, String group) {
    final retValuePtr = calloc<Int32>();

    try {
      final dataPtr = data == null ? nullptr : data.ptr.ref.lpVtbl;
      final tagHString = tag.toHString();
      final groupHString = group.toHString();

      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl,
                              VTablePointer data,
                              IntPtr tag,
                              IntPtr group,
                              Pointer<Int32> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, VTablePointer data,
                      int tag, int group, Pointer<Int32> retValuePtr)>()(
          ptr.ref.lpVtbl, dataPtr, tagHString, groupHString, retValuePtr);

      WindowsDeleteString(tagHString);
      WindowsDeleteString(groupHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return NotificationUpdateResult.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  NotificationUpdateResult updateWithTag(NotificationData? data, String tag) {
    final retValuePtr = calloc<Int32>();

    try {
      final dataPtr = data == null ? nullptr : data.ptr.ref.lpVtbl;
      final tagHString = tag.toHString();

      final hr =
          ptr.ref.vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  VTablePointer data,
                                  IntPtr tag,
                                  Pointer<Int32> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, VTablePointer data,
                          int tag, Pointer<Int32> retValuePtr)>()(
              ptr.ref.lpVtbl, dataPtr, tagHString, retValuePtr);

      WindowsDeleteString(tagHString);

      if (FAILED(hr)) throw WindowsException(hr);

      return NotificationUpdateResult.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }
}
