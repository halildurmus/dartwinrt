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
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'iuserwatcher.dart';

/// Provides events that fire during enumeration of users, when the
/// collection of users changes, or when a user's authentication status
/// changes.
///
/// {@category class}
class UserWatcher extends IInspectable implements IUserWatcher {
  UserWatcher.fromRawPointer(super.ptr);

  // IUserWatcher methods
  late final _iUserWatcher = IUserWatcher.from(this);

  @override
  UserWatcherStatus get status => _iUserWatcher.status;

  @override
  void start() => _iUserWatcher.start();

  @override
  void stop() => _iUserWatcher.stop();

  @override
  int add_Added(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_Added(handler);

  @override
  void remove_Added(int token) => _iUserWatcher.remove_Added(token);

  @override
  int add_Removed(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_Removed(handler);

  @override
  void remove_Removed(int token) => _iUserWatcher.remove_Removed(token);

  @override
  int add_Updated(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_Updated(handler);

  @override
  void remove_Updated(int token) => _iUserWatcher.remove_Updated(token);

  @override
  int add_AuthenticationStatusChanged(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_AuthenticationStatusChanged(handler);

  @override
  void remove_AuthenticationStatusChanged(int token) =>
      _iUserWatcher.remove_AuthenticationStatusChanged(token);

  @override
  int add_AuthenticationStatusChanging(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_AuthenticationStatusChanging(handler);

  @override
  void remove_AuthenticationStatusChanging(int token) =>
      _iUserWatcher.remove_AuthenticationStatusChanging(token);

  @override
  int add_EnumerationCompleted(
          Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_EnumerationCompleted(handler);

  @override
  void remove_EnumerationCompleted(int token) =>
      _iUserWatcher.remove_EnumerationCompleted(token);

  @override
  int add_Stopped(Pointer<NativeFunction<TypedEventHandler>> handler) =>
      _iUserWatcher.add_Stopped(handler);

  @override
  void remove_Stopped(int token) => _iUserWatcher.remove_Stopped(token);
}
