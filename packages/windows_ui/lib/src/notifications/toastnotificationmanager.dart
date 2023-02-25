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
import 'package:windows_data/windows_data.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'enums.g.dart';
import 'itoastnotificationmanagerstatics.dart';
import 'itoastnotificationmanagerstatics2.dart';
import 'itoastnotificationmanagerstatics4.dart';
import 'itoastnotificationmanagerstatics5.dart';
import 'toastnotificationhistory.dart';
import 'toastnotificationmanagerforuser.dart';
import 'toastnotifier.dart';

/// Creates ToastNotifier objects that you use to raise toast notifications.
/// This class also provides access to the XML content of the
/// system-provided toast templates so that you can customize that content
/// for use in your notifications.
///
/// {@category class}
class ToastNotificationManager extends IInspectable {
  ToastNotificationManager.fromRawPointer(super.ptr);

  static const _className = 'Windows.UI.Notifications.ToastNotificationManager';

  // IToastNotificationManagerStatics methods
  static ToastNotifier? createToastNotifier() {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics);
    final object =
        IToastNotificationManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createToastNotifier();
    } finally {
      object.release();
    }
  }

  static ToastNotifier? createToastNotifierWithId(String applicationId) {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics);
    final object =
        IToastNotificationManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.createToastNotifierWithId(applicationId);
    } finally {
      object.release();
    }
  }

  static XmlDocument? getTemplateContent(ToastTemplateType type) {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics);
    final object =
        IToastNotificationManagerStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getTemplateContent(type);
    } finally {
      object.release();
    }
  }

  // IToastNotificationManagerStatics2 methods
  static ToastNotificationHistory? get history {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics2);
    final object =
        IToastNotificationManagerStatics2.fromRawPointer(activationFactoryPtr);

    try {
      return object.history;
    } finally {
      object.release();
    }
  }

  // IToastNotificationManagerStatics4 methods
  static ToastNotificationManagerForUser? getForUser(User? user) {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics4);
    final object =
        IToastNotificationManagerStatics4.fromRawPointer(activationFactoryPtr);

    try {
      return object.getForUser(user);
    } finally {
      object.release();
    }
  }

  static void configureNotificationMirroring(NotificationMirroring value) {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics4);
    final object =
        IToastNotificationManagerStatics4.fromRawPointer(activationFactoryPtr);

    try {
      return object.configureNotificationMirroring(value);
    } finally {
      object.release();
    }
  }

  // IToastNotificationManagerStatics5 methods
  static ToastNotificationManagerForUser? getDefault() {
    final activationFactoryPtr = createActivationFactory(
        _className, IID_IToastNotificationManagerStatics5);
    final object =
        IToastNotificationManagerStatics5.fromRawPointer(activationFactoryPtr);

    try {
      return object.getDefault();
    } finally {
      object.release();
    }
  }
}
