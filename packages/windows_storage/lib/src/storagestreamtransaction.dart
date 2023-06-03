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

import 'istoragestreamtransaction.dart';
import 'streams/irandomaccessstream.dart';

/// Represents a write transaction for a random-access stream.
class StorageStreamTransaction extends IInspectable
    implements IStorageStreamTransaction, IClosable {
  StorageStreamTransaction.fromPtr(super.ptr);

  late final _iStorageStreamTransaction = IStorageStreamTransaction.from(this);

  @override
  IRandomAccessStream? get stream => _iStorageStreamTransaction.stream;

  @override
  Future<void> commitAsync() => _iStorageStreamTransaction.commitAsync();

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
