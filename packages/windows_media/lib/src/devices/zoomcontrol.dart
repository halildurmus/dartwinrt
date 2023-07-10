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

import 'izoomcontrol.dart';
import 'izoomcontrol2.dart';
import 'zoomsettings.dart';
import 'zoomtransitionmode.dart';

/// Provides functionality for controlling the zoom settings on a capture
/// device.
class ZoomControl extends IInspectable implements IZoomControl, IZoomControl2 {
  ZoomControl.fromPtr(super.ptr);

  late final _iZoomControl = IZoomControl.from(this);

  @override
  bool get supported => _iZoomControl.supported;

  @override
  double get min => _iZoomControl.min;

  @override
  double get max => _iZoomControl.max;

  @override
  double get step => _iZoomControl.step;

  @override
  double get value => _iZoomControl.value;

  @override
  set value(double value) => _iZoomControl.value = value;

  late final _iZoomControl2 = IZoomControl2.from(this);

  @override
  List<ZoomTransitionMode>? get supportedModes => _iZoomControl2.supportedModes;

  @override
  ZoomTransitionMode get mode => _iZoomControl2.mode;

  @override
  void configure(ZoomSettings? settings) => _iZoomControl2.configure(settings);
}
