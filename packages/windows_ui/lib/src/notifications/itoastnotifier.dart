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
import 'scheduledtoastnotification.dart';
import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotifier = '{75927b93-03f3-41ec-91d3-6e5bac1b38e7}';

/// {@category interface}
class IToastNotifier extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IToastNotifier.fromRawPointer(super.ptr);

  factory IToastNotifier.from(IInspectable interface) =>
      IToastNotifier.fromRawPointer(interface.toInterface(IID_IToastNotifier));

  void show(ToastNotification? notification) {
    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL notification)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL notification)>()(
        ptr.ref.lpVtbl,
        notification == null ? nullptr : notification.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void hide(ToastNotification? notification) {
    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL notification)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL notification)>()(
        ptr.ref.lpVtbl,
        notification == null ? nullptr : notification.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  NotificationSetting get setting {
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

      return NotificationSetting.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  void addToSchedule(ScheduledToastNotification? scheduledToast) {
    final hr = ptr.ref.vtable
            .elementAt(9)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL scheduledToast)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL scheduledToast)>()(
        ptr.ref.lpVtbl,
        scheduledToast == null ? nullptr : scheduledToast.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void removeFromSchedule(ScheduledToastNotification? scheduledToast) {
    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(LPVTBL, LPVTBL scheduledToast)>>>()
            .value
            .asFunction<int Function(LPVTBL, LPVTBL scheduledToast)>()(
        ptr.ref.lpVtbl,
        scheduledToast == null ? nullptr : scheduledToast.ptr.ref.lpVtbl);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  List<ScheduledToastNotification> getScheduledToastNotifications() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.vtable
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<HRESULT Function(LPVTBL, Pointer<COMObject>)>>>()
        .value
        .asFunction<
            int Function(
                LPVTBL, Pointer<COMObject>)>()(ptr.ref.lpVtbl, retValuePtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    final vectorView = IVectorView<ScheduledToastNotification>.fromRawPointer(
        retValuePtr,
        iterableIid: '{7a7b2a51-c182-5846-a861-4f9c036f24ad}',
        creator: ScheduledToastNotification.fromRawPointer);
    final list = vectorView.toList();
    vectorView.release();

    return list;
  }
}
