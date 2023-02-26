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

import 'istoragelibrarychangetrackeroptions.dart';

/// Allows callers to call EnableWithOptions on the change tracker to choose
/// to track all changes including last change id, or just the last change
/// id.
///
/// {@category class}
class StorageLibraryChangeTrackerOptions extends IInspectable
    implements IStorageLibraryChangeTrackerOptions {
  StorageLibraryChangeTrackerOptions() : super(activateClass(_className));
  StorageLibraryChangeTrackerOptions.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Storage.StorageLibraryChangeTrackerOptions';

  // IStorageLibraryChangeTrackerOptions methods
  late final _iStorageLibraryChangeTrackerOptions =
      IStorageLibraryChangeTrackerOptions.from(this);

  @override
  bool get trackChangeDetails =>
      _iStorageLibraryChangeTrackerOptions.trackChangeDetails;

  @override
  set trackChangeDetails(bool value) =>
      _iStorageLibraryChangeTrackerOptions.trackChangeDetails = value;
}
