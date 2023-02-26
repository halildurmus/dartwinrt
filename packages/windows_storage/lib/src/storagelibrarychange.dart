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
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'istorageitem.dart';
import 'istoragelibrarychange.dart';

/// Represents a change to an item in a storage library such as the
/// documents, music, or video library.
///
/// {@category class}
class StorageLibraryChange extends IInspectable
    implements IStorageLibraryChange {
  StorageLibraryChange.fromRawPointer(super.ptr);

  // IStorageLibraryChange methods
  late final _iStorageLibraryChange = IStorageLibraryChange.from(this);

  @override
  StorageLibraryChangeType get changeType => _iStorageLibraryChange.changeType;

  @override
  String get path => _iStorageLibraryChange.path;

  @override
  String get previousPath => _iStorageLibraryChange.previousPath;

  @override
  bool isOfType(StorageItemTypes type) => _iStorageLibraryChange.isOfType(type);

  @override
  Future<IStorageItem?> getStorageItemAsync() =>
      _iStorageLibraryChange.getStorageItemAsync();
}
