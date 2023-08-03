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

import 'digitalwindowbounds.dart';
import 'digitalwindowcapability.dart';
import 'digitalwindowmode.dart';
import 'idigitalwindowcontrol.dart';

/// Allows apps to capture a subregion of the capture device's sensor. For
/// cameras that offer high-resolution native sensors, this feature enables
/// digital pan, tilt, and zoom  and allow apps to obtain higher detail images
/// of such objects without the need to change media resolutions.
class DigitalWindowControl extends IInspectable
    implements IDigitalWindowControl {
  DigitalWindowControl.fromPtr(super.ptr);

  late final _iDigitalWindowControl = IDigitalWindowControl.from(this);

  @override
  bool get isSupported => _iDigitalWindowControl.isSupported;

  @override
  List<DigitalWindowMode> get supportedModes =>
      _iDigitalWindowControl.supportedModes;

  @override
  DigitalWindowMode get currentMode => _iDigitalWindowControl.currentMode;

  @override
  DigitalWindowBounds? getBounds() => _iDigitalWindowControl.getBounds();

  @override
  void configure(DigitalWindowMode digitalWindowMode) =>
      _iDigitalWindowControl.configure(digitalWindowMode);

  @override
  void configureWithBounds(DigitalWindowMode digitalWindowMode,
          DigitalWindowBounds? digitalWindowBounds) =>
      _iDigitalWindowControl.configureWithBounds(
          digitalWindowMode, digitalWindowBounds);

  @override
  List<DigitalWindowCapability?>? get supportedCapabilities =>
      _iDigitalWindowControl.supportedCapabilities;

  @override
  DigitalWindowCapability? getCapabilityForSize(int width, int height) =>
      _iDigitalWindowControl.getCapabilityForSize(width, height);
}
