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

import 'iframeisospeedcontrol.dart';

/// Represents the ISO speed settings for a frame in a variable photo
/// sequence.
class FrameIsoSpeedControl extends IInspectable
    implements IFrameIsoSpeedControl {
  FrameIsoSpeedControl.fromPtr(super.ptr);

  late final _iFrameIsoSpeedControl = IFrameIsoSpeedControl.from(this);

  @override
  bool get auto => _iFrameIsoSpeedControl.auto;

  @override
  set auto(bool value) => _iFrameIsoSpeedControl.auto = value;

  @override
  int? get value => _iFrameIsoSpeedControl.value;

  @override
  set value(int? value) => _iFrameIsoSpeedControl.value = value;
}
