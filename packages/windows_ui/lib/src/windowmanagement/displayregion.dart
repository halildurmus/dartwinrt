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

import 'idisplayregion.dart';
import 'windowingenvironment.dart';

/// Represents the region in which a view is able to be shown to a user on a
/// logical display.
class DisplayRegion extends IInspectable implements IDisplayRegion {
  DisplayRegion.fromPtr(super.ptr);

  late final _iDisplayRegion = IDisplayRegion.from(this);

  @override
  String get displayMonitorDeviceId => _iDisplayRegion.displayMonitorDeviceId;

  @override
  bool get isVisible => _iDisplayRegion.isVisible;

  @override
  Point get workAreaOffset => _iDisplayRegion.workAreaOffset;

  @override
  Size get workAreaSize => _iDisplayRegion.workAreaSize;

  @override
  WindowingEnvironment? get windowingEnvironment =>
      _iDisplayRegion.windowingEnvironment;

  @override
  int add_Changed(Pointer<COMObject> handler) =>
      _iDisplayRegion.add_Changed(handler);

  @override
  void remove_Changed(int token) => _iDisplayRegion.remove_Changed(token);
}
