// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'notificationsetting.dart';
import 'scheduledtoastnotification.dart';
import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotifier = '{75927b93-03f3-41ec-91d3-6e5bac1b38e7}';

class IToastNotifier extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IToastNotifier.fromPtr(super.ptr);

  factory IToastNotifier.from(IInspectable interface) =>
      IToastNotifier.fromPtr(interface.toInterface(IID_IToastNotifier));

  void show(ToastNotification? notification) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer notification)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, VTablePointer notification)>()(
        ptr.ref.lpVtbl,
        notification == null ? nullptr : notification.ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void hide(ToastNotification? notification) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer notification)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, VTablePointer notification)>()(
        ptr.ref.lpVtbl,
        notification == null ? nullptr : notification.ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  NotificationSetting get setting {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NotificationSetting.from(value.value);
    } finally {
      free(value);
    }
  }

  void addToSchedule(ScheduledToastNotification? scheduledToast) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer scheduledToast)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, VTablePointer scheduledToast)>()(
        ptr.ref.lpVtbl,
        scheduledToast == null ? nullptr : scheduledToast.ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeFromSchedule(ScheduledToastNotification? scheduledToast) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(VTablePointer lpVtbl,
                            VTablePointer scheduledToast)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl, VTablePointer scheduledToast)>()(
        ptr.ref.lpVtbl,
        scheduledToast == null ? nullptr : scheduledToast.ptr.ref.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<ScheduledToastNotification?> getScheduledToastNotifications() {
    final result = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
                        VTablePointer lpVtbl, Pointer<COMObject> result)>>>()
        .value
        .asFunction<
            int Function(VTablePointer lpVtbl,
                Pointer<COMObject> result)>()(ptr.ref.lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<ScheduledToastNotification?>.fromPtr(result,
            iterableIid: '{7a7b2a51-c182-5846-a861-4f9c036f24ad}',
            creator: ScheduledToastNotification.fromPtr)
        .toList();
  }
}
