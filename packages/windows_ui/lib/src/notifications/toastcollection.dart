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

import 'itoastcollection.dart';
import 'itoastcollectionfactory.dart';

/// Represents a group of notifications for a particular app.
class ToastCollection extends IInspectable implements IToastCollection {
  ToastCollection.fromPtr(super.ptr);

  static const _className = 'Windows.UI.Notifications.ToastCollection';

  factory ToastCollection.createInstance(String collectionId,
          String displayName, String launchArgs, Uri iconUri) =>
      createActivationFactory(IToastCollectionFactory.fromPtr, _className,
              IID_IToastCollectionFactory)
          .createInstance(collectionId, displayName, launchArgs, iconUri);

  late final _iToastCollection = IToastCollection.from(this);

  @override
  String get id => _iToastCollection.id;

  @override
  String get displayName => _iToastCollection.displayName;

  @override
  set displayName(String value) => _iToastCollection.displayName = value;

  @override
  String get launchArgs => _iToastCollection.launchArgs;

  @override
  set launchArgs(String value) => _iToastCollection.launchArgs = value;

  @override
  Uri? get icon => _iToastCollection.icon;

  @override
  set icon(Uri? value) => _iToastCollection.icon = value;
}
