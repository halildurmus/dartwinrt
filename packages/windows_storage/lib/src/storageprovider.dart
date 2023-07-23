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

import 'istorageprovider.dart';
import 'istorageprovider2.dart';

/// Contains info about the service that stores files and folders. Files and
/// folders may be stored either by the local file system or by a remote
/// service like Microsoft OneDrive.
class StorageProvider extends IInspectable
    implements IStorageProvider, IStorageProvider2 {
  StorageProvider.fromPtr(super.ptr);

  late final _iStorageProvider = IStorageProvider.from(this);

  @override
  String get id => _iStorageProvider.id;

  @override
  String get displayName => _iStorageProvider.displayName;

  late final _iStorageProvider2 = IStorageProvider2.from(this);

  @override
  Future<bool> isPropertySupportedForPartialFileAsync(
          String propertyCanonicalName) =>
      _iStorageProvider2
          .isPropertySupportedForPartialFileAsync(propertyCanonicalName);
}
