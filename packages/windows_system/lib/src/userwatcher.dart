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

import 'iuserwatcher.dart';
import 'userwatcherstatus.dart';

/// Provides events that fire during enumeration of users, when the collection
/// of users changes, or when a user's authentication status changes.
class UserWatcher extends IInspectable implements IUserWatcher {
  UserWatcher.fromPtr(super.ptr);

  late final _iUserWatcher = IUserWatcher.from(this);

  @override
  UserWatcherStatus get status => _iUserWatcher.status;

  @override
  void start() => _iUserWatcher.start();

  @override
  void stop() => _iUserWatcher.stop();

  @override
  int add_Added(Pointer<COMObject> handler) => _iUserWatcher.add_Added(handler);

  @override
  void remove_Added(int token) => _iUserWatcher.remove_Added(token);

  @override
  int add_Removed(Pointer<COMObject> handler) =>
      _iUserWatcher.add_Removed(handler);

  @override
  void remove_Removed(int token) => _iUserWatcher.remove_Removed(token);

  @override
  int add_Updated(Pointer<COMObject> handler) =>
      _iUserWatcher.add_Updated(handler);

  @override
  void remove_Updated(int token) => _iUserWatcher.remove_Updated(token);

  @override
  int add_AuthenticationStatusChanged(Pointer<COMObject> handler) =>
      _iUserWatcher.add_AuthenticationStatusChanged(handler);

  @override
  void remove_AuthenticationStatusChanged(int token) =>
      _iUserWatcher.remove_AuthenticationStatusChanged(token);

  @override
  int add_AuthenticationStatusChanging(Pointer<COMObject> handler) =>
      _iUserWatcher.add_AuthenticationStatusChanging(handler);

  @override
  void remove_AuthenticationStatusChanging(int token) =>
      _iUserWatcher.remove_AuthenticationStatusChanging(token);

  @override
  int add_EnumerationCompleted(Pointer<COMObject> handler) =>
      _iUserWatcher.add_EnumerationCompleted(handler);

  @override
  void remove_EnumerationCompleted(int token) =>
      _iUserWatcher.remove_EnumerationCompleted(token);

  @override
  int add_Stopped(Pointer<COMObject> handler) =>
      _iUserWatcher.add_Stopped(handler);

  @override
  void remove_Stopped(int token) => _iUserWatcher.remove_Stopped(token);
}
