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
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'istoragelibrarychangetracker.dart';
import 'istoragelibrarychangetracker2.dart';
import 'storagelibrarychangereader.dart';
import 'storagelibrarychangetrackeroptions.dart';

/// Provides APIs that you can use to manage change tracking for any library
/// (such as documents, music, or videos) or folder.
///
/// {@category class}
class StorageLibraryChangeTracker extends IInspectable
    implements IStorageLibraryChangeTracker, IStorageLibraryChangeTracker2 {
  StorageLibraryChangeTracker.fromRawPointer(super.ptr);

  late final _iStorageLibraryChangeTracker =
      IStorageLibraryChangeTracker.from(this);

  @override
  StorageLibraryChangeReader? getChangeReader() =>
      _iStorageLibraryChangeTracker.getChangeReader();

  @override
  void enable() => _iStorageLibraryChangeTracker.enable();

  @override
  void reset() => _iStorageLibraryChangeTracker.reset();

  late final _iStorageLibraryChangeTracker2 =
      IStorageLibraryChangeTracker2.from(this);

  @override
  void enableWithOptions(StorageLibraryChangeTrackerOptions? options) =>
      _iStorageLibraryChangeTracker2.enableWithOptions(options);

  @override
  void disable() => _iStorageLibraryChangeTracker2.disable();
}
