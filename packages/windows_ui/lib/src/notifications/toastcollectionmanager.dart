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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';
import 'package:windows_system/windows_system.dart';

import 'itoastcollectionmanager.dart';
import 'toastcollection.dart';

/// Provides methods for creating, retrieving, updating, and removing
/// ToastCollection objects.
class ToastCollectionManager extends IInspectable
    implements IToastCollectionManager {
  ToastCollectionManager.fromPtr(super.ptr);

  late final _iToastCollectionManager = IToastCollectionManager.from(this);

  @override
  Future<void> saveToastCollectionAsync(ToastCollection? collection) =>
      _iToastCollectionManager.saveToastCollectionAsync(collection);

  @override
  Future<List<ToastCollection?>> findAllToastCollectionsAsync() =>
      _iToastCollectionManager.findAllToastCollectionsAsync();

  @override
  Future<ToastCollection?> getToastCollectionAsync(String collectionId) =>
      _iToastCollectionManager.getToastCollectionAsync(collectionId);

  @override
  Future<void> removeToastCollectionAsync(String collectionId) =>
      _iToastCollectionManager.removeToastCollectionAsync(collectionId);

  @override
  Future<void> removeAllToastCollectionsAsync() =>
      _iToastCollectionManager.removeAllToastCollectionsAsync();

  @override
  User? get user => _iToastCollectionManager.user;

  @override
  String get appId => _iToastCollectionManager.appId;
}
