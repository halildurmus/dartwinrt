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

import 'itoastnotificationhistory.dart';
import 'itoastnotificationhistory2.dart';
import 'toastnotification.dart';

/// Manages the toast notifications for an app including the ability the
/// clear all toast history and removing individual toasts.
///
/// {@category class}
class ToastNotificationHistory extends IInspectable
    implements IToastNotificationHistory2, IToastNotificationHistory {
  ToastNotificationHistory.fromRawPointer(super.ptr);

  // IToastNotificationHistory2 methods
  late final _iToastNotificationHistory2 =
      IToastNotificationHistory2.from(this);

  @override
  List<ToastNotification> getHistory() =>
      _iToastNotificationHistory2.getHistory();

  @override
  List<ToastNotification> getHistoryWithId(String applicationId) =>
      _iToastNotificationHistory2.getHistoryWithId(applicationId);

  // IToastNotificationHistory methods
  late final _iToastNotificationHistory = IToastNotificationHistory.from(this);

  @override
  void removeGroup(String group) =>
      _iToastNotificationHistory.removeGroup(group);

  @override
  void removeGroupWithId(String group, String applicationId) =>
      _iToastNotificationHistory.removeGroupWithId(group, applicationId);

  @override
  void removeGroupedTagWithId(String tag, String group, String applicationId) =>
      _iToastNotificationHistory.removeGroupedTagWithId(
          tag, group, applicationId);

  @override
  void removeGroupedTag(String tag, String group) =>
      _iToastNotificationHistory.removeGroupedTag(tag, group);

  @override
  void remove(String tag) => _iToastNotificationHistory.remove(tag);

  @override
  void clear() => _iToastNotificationHistory.clear();

  @override
  void clearWithId(String applicationId) =>
      _iToastNotificationHistory.clearWithId(applicationId);
}
