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
import 'package:windows_devices/windows_devices.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ipanelbasedoptimizationcontrol.dart';

/// When supported, allows an app to enable the capture device driver to
/// optimize camera capture functionality based on the panel location of the
/// camera.
class PanelBasedOptimizationControl extends IInspectable
    implements IPanelBasedOptimizationControl {
  PanelBasedOptimizationControl.fromPtr(super.ptr);

  late final _iPanelBasedOptimizationControl =
      IPanelBasedOptimizationControl.from(this);

  @override
  bool get isSupported => _iPanelBasedOptimizationControl.isSupported;

  @override
  Panel get panel => _iPanelBasedOptimizationControl.panel;

  @override
  set panel(Panel value) => _iPanelBasedOptimizationControl.panel = value;
}
