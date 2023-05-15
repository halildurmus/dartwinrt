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

import 'iwebaccountmonitor.dart';
import 'iwebaccountmonitor2.dart';

/// Allows an app to monitor specific web accounts and raises events when
/// those web accounts change.
///
/// {@category class}
class WebAccountMonitor extends IInspectable
    implements IWebAccountMonitor, IWebAccountMonitor2 {
  WebAccountMonitor.fromPtr(super.ptr);

  late final _iWebAccountMonitor = IWebAccountMonitor.from(this);

  @override
  int add_Updated(Pointer<COMObject> handler) =>
      _iWebAccountMonitor.add_Updated(handler);

  @override
  void remove_Updated(int token) => _iWebAccountMonitor.remove_Updated(token);

  @override
  int add_Removed(Pointer<COMObject> handler) =>
      _iWebAccountMonitor.add_Removed(handler);

  @override
  void remove_Removed(int token) => _iWebAccountMonitor.remove_Removed(token);

  @override
  int add_DefaultSignInAccountChanged(Pointer<COMObject> handler) =>
      _iWebAccountMonitor.add_DefaultSignInAccountChanged(handler);

  @override
  void remove_DefaultSignInAccountChanged(int token) =>
      _iWebAccountMonitor.remove_DefaultSignInAccountChanged(token);

  late final _iWebAccountMonitor2 = IWebAccountMonitor2.from(this);

  @override
  int add_AccountPictureUpdated(Pointer<COMObject> handler) =>
      _iWebAccountMonitor2.add_AccountPictureUpdated(handler);

  @override
  void remove_AccountPictureUpdated(int token) =>
      _iWebAccountMonitor2.remove_AccountPictureUpdated(token);
}
