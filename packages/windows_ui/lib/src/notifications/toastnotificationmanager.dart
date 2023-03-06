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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'itoastnotificationmanagerstatics.dart';
import 'itoastnotificationmanagerstatics2.dart';
import 'itoastnotificationmanagerstatics4.dart';
import 'itoastnotificationmanagerstatics5.dart';
import 'notificationmirroring.dart';
import 'toastnotificationhistory.dart';
import 'toastnotificationmanagerforuser.dart';
import 'toastnotifier.dart';
import 'toasttemplatetype.dart';

/// Creates ToastNotifier objects that you use to raise toast notifications.
/// This class also provides access to the XML content of the
/// system-provided toast templates so that you can customize that content
/// for use in your notifications.
///
/// {@category class}
class ToastNotificationManager extends IInspectable {
  ToastNotificationManager.fromPtr(super.ptr);

  static const _className = 'Windows.UI.Notifications.ToastNotificationManager';

  static ToastNotifier? createToastNotifier() => createActivationFactory(
          IToastNotificationManagerStatics.fromPtr,
          _className,
          IID_IToastNotificationManagerStatics)
      .createToastNotifier();

  static ToastNotifier? createToastNotifierWithId(String applicationId) =>
      createActivationFactory(IToastNotificationManagerStatics.fromPtr,
              _className, IID_IToastNotificationManagerStatics)
          .createToastNotifierWithId(applicationId);

  static XmlDocument? getTemplateContent(ToastTemplateType type) =>
      createActivationFactory(IToastNotificationManagerStatics.fromPtr,
              _className, IID_IToastNotificationManagerStatics)
          .getTemplateContent(type);

  static ToastNotificationHistory? get history => createActivationFactory(
          IToastNotificationManagerStatics2.fromPtr,
          _className,
          IID_IToastNotificationManagerStatics2)
      .history;

  static ToastNotificationManagerForUser? getForUser(User? user) =>
      createActivationFactory(IToastNotificationManagerStatics4.fromPtr,
              _className, IID_IToastNotificationManagerStatics4)
          .getForUser(user);

  static void configureNotificationMirroring(NotificationMirroring value) =>
      createActivationFactory(IToastNotificationManagerStatics4.fromPtr,
              _className, IID_IToastNotificationManagerStatics4)
          .configureNotificationMirroring(value);

  static ToastNotificationManagerForUser? getDefault() =>
      createActivationFactory(IToastNotificationManagerStatics5.fromPtr,
              _className, IID_IToastNotificationManagerStatics5)
          .getDefault();
}
