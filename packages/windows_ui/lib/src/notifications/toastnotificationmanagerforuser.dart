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
import 'package:windows_system/windows_system.dart';

import 'itoastnotificationmanagerforuser.dart';
import 'itoastnotificationmanagerforuser2.dart';
import 'itoastnotificationmanagerforuser3.dart';
import 'toastcollectionmanager.dart';
import 'toastnotificationhistory.dart';
import 'toastnotificationmode.dart';
import 'toastnotifier.dart';

/// Creates ToastNotifier objects that you use to raise toast notifications
/// for the bound user. This class also provides access to the XML content
/// of the system-provided toast templates so that you can customize that
/// content for use in your notifications.
class ToastNotificationManagerForUser extends IInspectable
    implements
        IToastNotificationManagerForUser,
        IToastNotificationManagerForUser2,
        IToastNotificationManagerForUser3 {
  ToastNotificationManagerForUser.fromPtr(super.ptr);

  late final _iToastNotificationManagerForUser =
      IToastNotificationManagerForUser.from(this);

  @override
  ToastNotifier? createToastNotifier() =>
      _iToastNotificationManagerForUser.createToastNotifier();

  @override
  ToastNotifier? createToastNotifierWithId(String applicationId) =>
      _iToastNotificationManagerForUser
          .createToastNotifierWithId(applicationId);

  @override
  ToastNotificationHistory? get history =>
      _iToastNotificationManagerForUser.history;

  @override
  User? get user => _iToastNotificationManagerForUser.user;

  late final _iToastNotificationManagerForUser2 =
      IToastNotificationManagerForUser2.from(this);

  @override
  Future<ToastNotifier?> getToastNotifierForToastCollectionIdAsync(
          String collectionId) =>
      _iToastNotificationManagerForUser2
          .getToastNotifierForToastCollectionIdAsync(collectionId);

  @override
  Future<ToastNotificationHistory?> getHistoryForToastCollectionIdAsync(
          String collectionId) =>
      _iToastNotificationManagerForUser2
          .getHistoryForToastCollectionIdAsync(collectionId);

  @override
  ToastCollectionManager? getToastCollectionManager() =>
      _iToastNotificationManagerForUser2.getToastCollectionManager();

  @override
  ToastCollectionManager? getToastCollectionManagerWithAppId(String appId) =>
      _iToastNotificationManagerForUser2
          .getToastCollectionManagerWithAppId(appId);

  late final _iToastNotificationManagerForUser3 =
      IToastNotificationManagerForUser3.from(this);

  @override
  ToastNotificationMode get notificationMode =>
      _iToastNotificationManagerForUser3.notificationMode;

  @override
  int add_NotificationModeChanged(Pointer<COMObject> handler) =>
      _iToastNotificationManagerForUser3.add_NotificationModeChanged(handler);

  @override
  void remove_NotificationModeChanged(int token) =>
      _iToastNotificationManagerForUser3.remove_NotificationModeChanged(token);
}
