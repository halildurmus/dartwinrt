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

import 'ischeduledtoastnotification.dart';
import 'ischeduledtoastnotification2.dart';
import 'ischeduledtoastnotification3.dart';
import 'ischeduledtoastnotification4.dart';
import 'ischeduledtoastnotificationfactory.dart';
import 'notificationmirroring.dart';

/// Contains the XML that defines the toast notification that will display at
/// the scheduled time.
class ScheduledToastNotification extends IInspectable
    implements
        IScheduledToastNotification,
        IScheduledToastNotification2,
        IScheduledToastNotification3,
        IScheduledToastNotification4 {
  ScheduledToastNotification.fromPtr(super.ptr);

  static const _className =
      'Windows.UI.Notifications.ScheduledToastNotification';

  factory ScheduledToastNotification.createScheduledToastNotification(
          XmlDocument? content, DateTime deliveryTime) =>
      createActivationFactory(IScheduledToastNotificationFactory.fromPtr,
              _className, IID_IScheduledToastNotificationFactory)
          .createScheduledToastNotification(content, deliveryTime);

  factory ScheduledToastNotification.createScheduledToastNotificationRecurring(
          XmlDocument? content,
          DateTime deliveryTime,
          Duration snoozeInterval,
          int maximumSnoozeCount) =>
      createActivationFactory(IScheduledToastNotificationFactory.fromPtr,
              _className, IID_IScheduledToastNotificationFactory)
          .createScheduledToastNotificationRecurring(
              content, deliveryTime, snoozeInterval, maximumSnoozeCount);

  late final _iScheduledToastNotification =
      IScheduledToastNotification.from(this);

  @override
  XmlDocument? get content => _iScheduledToastNotification.content;

  @override
  DateTime get deliveryTime => _iScheduledToastNotification.deliveryTime;

  @override
  Duration? get snoozeInterval => _iScheduledToastNotification.snoozeInterval;

  @override
  int get maximumSnoozeCount => _iScheduledToastNotification.maximumSnoozeCount;

  @override
  set id(String value) => _iScheduledToastNotification.id = value;

  @override
  String get id => _iScheduledToastNotification.id;

  late final _iScheduledToastNotification2 =
      IScheduledToastNotification2.from(this);

  @override
  set tag(String value) => _iScheduledToastNotification2.tag = value;

  @override
  String get tag => _iScheduledToastNotification2.tag;

  @override
  set group(String value) => _iScheduledToastNotification2.group = value;

  @override
  String get group => _iScheduledToastNotification2.group;

  @override
  set suppressPopup(bool value) =>
      _iScheduledToastNotification2.suppressPopup = value;

  @override
  bool get suppressPopup => _iScheduledToastNotification2.suppressPopup;

  late final _iScheduledToastNotification3 =
      IScheduledToastNotification3.from(this);

  @override
  NotificationMirroring get notificationMirroring =>
      _iScheduledToastNotification3.notificationMirroring;

  @override
  set notificationMirroring(NotificationMirroring value) =>
      _iScheduledToastNotification3.notificationMirroring = value;

  @override
  String get remoteId => _iScheduledToastNotification3.remoteId;

  @override
  set remoteId(String value) => _iScheduledToastNotification3.remoteId = value;

  late final _iScheduledToastNotification4 =
      IScheduledToastNotification4.from(this);

  @override
  DateTime? get expirationTime => _iScheduledToastNotification4.expirationTime;

  @override
  set expirationTime(DateTime? value) =>
      _iScheduledToastNotification4.expirationTime = value;
}
