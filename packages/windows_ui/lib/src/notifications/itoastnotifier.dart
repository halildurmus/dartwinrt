// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

import 'notificationsetting.dart';
import 'scheduledtoastnotification.dart';
import 'toastnotification.dart';

/// @nodoc
const IID_IToastNotifier = '{75927b93-03f3-41ec-91d3-6e5bac1b38e7}';

class IToastNotifier extends IInspectable {
  IToastNotifier.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IToastNotifierVtbl>().ref;

  final _IToastNotifierVtbl _vtable;

  factory IToastNotifier.from(IInspectable interface) =>
      interface.cast(IToastNotifier.fromPtr, IID_IToastNotifier);

  void show(ToastNotification? notification) {
    final hr = _vtable.Show.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer notification)>()(
        lpVtbl, notification.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void hide(ToastNotification? notification) {
    final hr = _vtable.Hide.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer notification)>()(
        lpVtbl, notification.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  NotificationSetting get setting {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Setting.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return NotificationSetting.from(value.value);
    } finally {
      free(value);
    }
  }

  void addToSchedule(ScheduledToastNotification? scheduledToast) {
    final hr = _vtable.AddToSchedule.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer scheduledToast)>()(
        lpVtbl, scheduledToast.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void removeFromSchedule(ScheduledToastNotification? scheduledToast) {
    final hr = _vtable.RemoveFromSchedule.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer scheduledToast)>()(
        lpVtbl, scheduledToast.lpVtbl);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  List<ScheduledToastNotification?> getScheduledToastNotifications() {
    final result = calloc<COMObject>();

    final hr = _vtable.GetScheduledToastNotifications.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> result)>()(lpVtbl, result);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    return IVectorView<ScheduledToastNotification?>.fromPtr(result,
            iterableIid: '{7a7b2a51-c182-5846-a861-4f9c036f24ad}',
            tObjectCreator: ScheduledToastNotification.fromPtr)
        .toList();
  }
}

final class _IToastNotifierVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, VTablePointer notification)>> Show;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl, VTablePointer notification)>> Hide;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Setting;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer scheduledToast)>>
      AddToSchedule;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, VTablePointer scheduledToast)>>
      RemoveFromSchedule;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> result)>>
      GetScheduledToastNotifications;
}
