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

import 'izoomsettings.dart';
import 'zoomtransitionmode.dart';

/// Represents zoom settings that can be applied to the ZoomControl by calling
/// the Configure method.
class ZoomSettings extends IInspectable implements IZoomSettings {
  ZoomSettings() : super(activateClass(_className));
  ZoomSettings.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Devices.ZoomSettings';

  late final _iZoomSettings = IZoomSettings.from(this);

  @override
  ZoomTransitionMode get mode => _iZoomSettings.mode;

  @override
  set mode(ZoomTransitionMode value) => _iZoomSettings.mode = value;

  @override
  double get value => _iZoomSettings.value;

  @override
  set value(double value) => _iZoomSettings.value = value;
}
