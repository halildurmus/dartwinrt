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

import 'inotificationdata.dart';
import 'inotificationdatafactory.dart';

/// Stores data for display in a toast notification.
///
/// {@category class}
class NotificationData extends IInspectable implements INotificationData {
  NotificationData() : super(activateClass(_className));
  NotificationData.fromPtr(super.ptr);

  static const _className = 'Windows.UI.Notifications.NotificationData';

  factory NotificationData.createNotificationDataWithValuesAndSequenceNumber(
          IIterable<IKeyValuePair<String, String>> initialValues,
          int sequenceNumber) =>
      createActivationFactory(INotificationDataFactory.fromPtr, _className,
              IID_INotificationDataFactory)
          .createNotificationDataWithValuesAndSequenceNumber(
              initialValues, sequenceNumber);

  factory NotificationData.createNotificationDataWithValues(
          IIterable<IKeyValuePair<String, String>> initialValues) =>
      createActivationFactory(INotificationDataFactory.fromPtr, _className,
              IID_INotificationDataFactory)
          .createNotificationDataWithValues(initialValues);

  late final _iNotificationData = INotificationData.from(this);

  @override
  IMap<String, String> get values => _iNotificationData.values;

  @override
  int get sequenceNumber => _iNotificationData.sequenceNumber;

  @override
  set sequenceNumber(int value) => _iNotificationData.sequenceNumber = value;
}
