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
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/uri.dart' as winrt_uri;
import 'package:windows_foundation/windows_foundation.dart';

import 'itoastcollection.dart';
import 'itoastcollectionfactory.dart';

/// Represents a group of notifications for a particular app.
///
/// {@category class}
class ToastCollection extends IInspectable implements IToastCollection {
  ToastCollection.fromRawPointer(super.ptr);

  static const _className = 'Windows.UI.Notifications.ToastCollection';

  // IToastCollectionFactory methods
  factory ToastCollection.createInstance(String collectionId,
      String displayName, String launchArgs, Uri? iconUri) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IToastCollectionFactory);
    final object = IToastCollectionFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.createInstance(
          collectionId, displayName, launchArgs, iconUri);
    } finally {
      object.release();
    }
  }

  // IToastCollection methods
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
