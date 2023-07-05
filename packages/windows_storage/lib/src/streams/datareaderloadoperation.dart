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

/// Loads data from an input stream.
class DataReaderLoadOperation extends IInspectable
    implements IAsyncOperation<int>, IAsyncInfo {
  DataReaderLoadOperation.fromPtr(super.ptr);

  late final _iAsyncOperation = IAsyncOperation<int>.fromPtr(
      toInterface('{ef60385f-be78-584b-aaef-7829ada2b0de}'),
      intType: IntType.uint32);

  @override
  set completed(Pointer<COMObject> handler) =>
      _iAsyncOperation.completed = handler;

  @override
  Pointer<COMObject> get completed => _iAsyncOperation.completed;

  @override
  int getResults() => _iAsyncOperation.getResults();

  late final _iAsyncInfo = IAsyncInfo.from(this);

  @override
  int get id => _iAsyncInfo.id;

  @override
  AsyncStatus get status => _iAsyncInfo.status;

  @override
  int get errorCode => _iAsyncInfo.errorCode;

  @override
  void cancel() => _iAsyncInfo.cancel();

  @override
  void close() => _iAsyncInfo.close();
}
