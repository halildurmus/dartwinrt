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

import 'inotificationdata.dart';
import 'inotificationdatafactory.dart';

/// Stores data for display in a toast notification.
///
/// {@category class}
class NotificationData extends IInspectable implements INotificationData {
  NotificationData() : super(activateClass(_className));
  NotificationData.fromRawPointer(super.ptr);

  static const _className = 'Windows.UI.Notifications.NotificationData';

  // INotificationDataFactory methods
  factory NotificationData.createNotificationDataWithValuesAndSequenceNumber(
      IIterable<IKeyValuePair<String, String>> initialValues,
      int sequenceNumber) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INotificationDataFactory);
    final object =
        INotificationDataFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createNotificationDataWithValuesAndSequenceNumber(
          initialValues, sequenceNumber);
    } finally {
      object.release();
    }
  }

  factory NotificationData.createNotificationDataWithValues(
      IIterable<IKeyValuePair<String, String>> initialValues) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_INotificationDataFactory);
    final object =
        INotificationDataFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createNotificationDataWithValues(initialValues);
    } finally {
      object.release();
    }
  }

  // INotificationData methods
  late final _iNotificationData = INotificationData.from(this);

  @override
  IMap<String, String> get values => _iNotificationData.values;

  @override
  int get sequenceNumber => _iNotificationData.sequenceNumber;

  @override
  set sequenceNumber(int value) => _iNotificationData.sequenceNumber = value;
}
