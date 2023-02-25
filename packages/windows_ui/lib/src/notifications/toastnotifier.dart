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
import 'itoastnotifier.dart';
import 'itoastnotifier2.dart';
import 'itoastnotifier3.dart';
import 'notificationdata.dart';
import 'scheduledtoastnotification.dart';
import 'toastnotification.dart';

/// Raises a toast notification to the specific app to which the
/// ToastNotifier is bound. This class also lets you schedule and remove
/// toast notifications.
///
/// {@category class}
class ToastNotifier extends IInspectable
    implements IToastNotifier, IToastNotifier2, IToastNotifier3 {
  ToastNotifier.fromRawPointer(super.ptr);

  // IToastNotifier methods
  late final _iToastNotifier = IToastNotifier.from(this);

  @override
  void show(ToastNotification? notification) =>
      _iToastNotifier.show(notification);

  @override
  void hide(ToastNotification? notification) =>
      _iToastNotifier.hide(notification);

  @override
  NotificationSetting get setting => _iToastNotifier.setting;

  @override
  void addToSchedule(ScheduledToastNotification? scheduledToast) =>
      _iToastNotifier.addToSchedule(scheduledToast);

  @override
  void removeFromSchedule(ScheduledToastNotification? scheduledToast) =>
      _iToastNotifier.removeFromSchedule(scheduledToast);

  @override
  List<ScheduledToastNotification> getScheduledToastNotifications() =>
      _iToastNotifier.getScheduledToastNotifications();

  // IToastNotifier2 methods
  late final _iToastNotifier2 = IToastNotifier2.from(this);

  @override
  NotificationUpdateResult updateWithTagAndGroup(
          NotificationData? data, String tag, String group) =>
      _iToastNotifier2.updateWithTagAndGroup(data, tag, group);

  @override
  NotificationUpdateResult updateWithTag(NotificationData? data, String tag) =>
      _iToastNotifier2.updateWithTag(data, tag);

  // IToastNotifier3 methods
  late final _iToastNotifier3 = IToastNotifier3.from(this);

  @override
  int add_ScheduledToastNotificationShowing(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iToastNotifier3.add_ScheduledToastNotificationShowing(handler);

  @override
  void remove_ScheduledToastNotificationShowing(int token) =>
      _iToastNotifier3.remove_ScheduledToastNotificationShowing(token);
}
