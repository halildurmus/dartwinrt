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

import 'iremoteautomationwindow.dart';

/// Represents a window for a remote application (one that isnât running on
/// the local machine).
class RemoteAutomationWindow extends IInspectable
    implements IRemoteAutomationWindow {
  RemoteAutomationWindow.fromPtr(super.ptr);

  late final _iRemoteAutomationWindow = IRemoteAutomationWindow.from(this);

  @override
  Object? get automationProvider => _iRemoteAutomationWindow.automationProvider;

  @override
  Future<void> unregisterAsync() => _iRemoteAutomationWindow.unregisterAsync();
}
