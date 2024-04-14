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

import 'itoastnotification.dart';
import 'itoastnotification2.dart';
import 'itoastnotification3.dart';
import 'itoastnotification4.dart';
import 'itoastnotification6.dart';
import 'itoastnotificationfactory.dart';
import 'notificationdata.dart';
import 'notificationmirroring.dart';
import 'toastnotificationpriority.dart';

/// Defines the content, associated metadata and events, and expiration time of
/// a toast notification.
class ToastNotification extends IInspectable
    implements
        IToastNotification,
        IToastNotification2,
        IToastNotification3,
        IToastNotification4,
        IToastNotification6 {
  ToastNotification.fromPtr(super.ptr);

  static const _className = 'Windows.UI.Notifications.ToastNotification';

  factory ToastNotification.createToastNotification(XmlDocument? content) =>
      createActivationFactory(IToastNotificationFactory.fromPtr, _className,
              IID_IToastNotificationFactory)
          .createToastNotification(content);

  late final _iToastNotification = IToastNotification.from(this);

  @override
  XmlDocument? get content => _iToastNotification.content;

  @override
  set expirationTime(DateTime? value) =>
      _iToastNotification.expirationTime = value;

  @override
  DateTime? get expirationTime => _iToastNotification.expirationTime;

  @override
  int add_Dismissed(Pointer<COMObject> handler) =>
      _iToastNotification.add_Dismissed(handler);

  @override
  void remove_Dismissed(int token) =>
      _iToastNotification.remove_Dismissed(token);

  @override
  int add_Activated(Pointer<COMObject> handler) =>
      _iToastNotification.add_Activated(handler);

  @override
  void remove_Activated(int token) =>
      _iToastNotification.remove_Activated(token);

  @override
  int add_Failed(Pointer<COMObject> handler) =>
      _iToastNotification.add_Failed(handler);

  @override
  void remove_Failed(int token) => _iToastNotification.remove_Failed(token);

  late final _iToastNotification2 = IToastNotification2.from(this);

  @override
  set tag(String value) => _iToastNotification2.tag = value;

  @override
  String get tag => _iToastNotification2.tag;

  @override
  set group(String value) => _iToastNotification2.group = value;

  @override
  String get group => _iToastNotification2.group;

  @override
  set suppressPopup(bool value) => _iToastNotification2.suppressPopup = value;

  @override
  bool get suppressPopup => _iToastNotification2.suppressPopup;

  late final _iToastNotification3 = IToastNotification3.from(this);

  @override
  NotificationMirroring get notificationMirroring =>
      _iToastNotification3.notificationMirroring;

  @override
  set notificationMirroring(NotificationMirroring value) =>
      _iToastNotification3.notificationMirroring = value;

  @override
  String get remoteId => _iToastNotification3.remoteId;

  @override
  set remoteId(String value) => _iToastNotification3.remoteId = value;

  late final _iToastNotification4 = IToastNotification4.from(this);

  @override
  NotificationData? get data => _iToastNotification4.data;

  @override
  set data(NotificationData? value) => _iToastNotification4.data = value;

  @override
  ToastNotificationPriority get priority => _iToastNotification4.priority;

  @override
  set priority(ToastNotificationPriority value) =>
      _iToastNotification4.priority = value;

  late final _iToastNotification6 = IToastNotification6.from(this);

  @override
  bool get expiresOnReboot => _iToastNotification6.expiresOnReboot;

  @override
  set expiresOnReboot(bool value) =>
      _iToastNotification6.expiresOnReboot = value;
}
