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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'scheduledtoastnotification.dart';

/// @nodoc
const IID_IScheduledToastNotificationFactory =
    '{e7bed191-0bb9-4189-8394-31761b476fd7}';

class IScheduledToastNotificationFactory extends IInspectable {
  IScheduledToastNotificationFactory.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IScheduledToastNotificationFactoryVtbl>().ref;

  final _IScheduledToastNotificationFactoryVtbl _vtable;

  factory IScheduledToastNotificationFactory.from(IInspectable interface) =>
      interface.cast(IScheduledToastNotificationFactory.fromPtr,
          IID_IScheduledToastNotificationFactory);

  ScheduledToastNotification createScheduledToastNotification(
      XmlDocument? content, DateTime deliveryTime) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateScheduledToastNotification.asFunction<
            int Function(VTablePointer lpVtbl, VTablePointer content,
                int deliveryTime, Pointer<COMObject> value)>()(
        lpVtbl, content.lpVtbl, deliveryTime.toWinRTDateTime(), value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return ScheduledToastNotification.fromPtr(value);
  }

  ScheduledToastNotification createScheduledToastNotificationRecurring(
      XmlDocument? content,
      DateTime deliveryTime,
      Duration snoozeInterval,
      int maximumSnoozeCount) {
    final value = calloc<COMObject>();

    final hr = _vtable.CreateScheduledToastNotificationRecurring.asFunction<
            int Function(
                VTablePointer lpVtbl,
                VTablePointer content,
                int deliveryTime,
                int snoozeInterval,
                int maximumSnoozeCount,
                Pointer<COMObject> value)>()(
        lpVtbl,
        content.lpVtbl,
        deliveryTime.toWinRTDateTime(),
        snoozeInterval.toWinRTDuration(),
        maximumSnoozeCount,
        value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    return ScheduledToastNotification.fromPtr(value);
  }
}

final class _IScheduledToastNotificationFactoryVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              VTablePointer content,
              Int64 deliveryTime,
              Pointer<COMObject> value)>> CreateScheduledToastNotification;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  VTablePointer content,
                  Int64 deliveryTime,
                  Int64 snoozeInterval,
                  Uint32 maximumSnoozeCount,
                  Pointer<COMObject> value)>>
      CreateScheduledToastNotificationRecurring;
}
