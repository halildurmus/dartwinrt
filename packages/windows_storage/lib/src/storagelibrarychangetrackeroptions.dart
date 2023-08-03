// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
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

import 'istoragelibrarychangetrackeroptions.dart';

/// Allows callers to call EnableWithOptions on the change tracker to choose to
/// track all changes including last change id, or just the last change id.
class StorageLibraryChangeTrackerOptions extends IInspectable
    implements IStorageLibraryChangeTrackerOptions {
  StorageLibraryChangeTrackerOptions() : super(activateClass(_className));
  StorageLibraryChangeTrackerOptions.fromPtr(super.ptr);

  static const _className =
      'Windows.Storage.StorageLibraryChangeTrackerOptions';

  late final _iStorageLibraryChangeTrackerOptions =
      IStorageLibraryChangeTrackerOptions.from(this);

  @override
  bool get trackChangeDetails =>
      _iStorageLibraryChangeTrackerOptions.trackChangeDetails;

  @override
  set trackChangeDetails(bool value) =>
      _iStorageLibraryChangeTrackerOptions.trackChangeDetails = value;
}
