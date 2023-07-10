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

import 'hdrvideomode.dart';
import 'ihdrvideocontrol.dart';

/// When supported, allows an app to enable High Dynamic Range (HDR) video
/// recording on the capture device.
class HdrVideoControl extends IInspectable implements IHdrVideoControl {
  HdrVideoControl.fromPtr(super.ptr);

  late final _iHdrVideoControl = IHdrVideoControl.from(this);

  @override
  bool get supported => _iHdrVideoControl.supported;

  @override
  List<HdrVideoMode>? get supportedModes => _iHdrVideoControl.supportedModes;

  @override
  HdrVideoMode get mode => _iHdrVideoControl.mode;

  @override
  set mode(HdrVideoMode value) => _iHdrVideoControl.mode = value;
}
