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

import 'istoragelibrarychangereader.dart';
import 'istoragelibrarychangereader2.dart';
import 'storagelibrarychange.dart';

/// Enables the calling app to read through the changes to items in a
/// storage library.
class StorageLibraryChangeReader extends IInspectable
    implements IStorageLibraryChangeReader, IStorageLibraryChangeReader2 {
  StorageLibraryChangeReader.fromPtr(super.ptr);

  late final _iStorageLibraryChangeReader =
      IStorageLibraryChangeReader.from(this);

  @override
  Future<List<StorageLibraryChange?>> readBatchAsync() =>
      _iStorageLibraryChangeReader.readBatchAsync();

  @override
  Future<void> acceptChangesAsync() =>
      _iStorageLibraryChangeReader.acceptChangesAsync();

  late final _iStorageLibraryChangeReader2 =
      IStorageLibraryChangeReader2.from(this);

  @override
  int getLastChangeId() => _iStorageLibraryChangeReader2.getLastChangeId();
}
