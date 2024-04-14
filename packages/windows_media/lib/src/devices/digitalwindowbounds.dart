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

import 'idigitalwindowbounds.dart';

/// Represents the bounds of the digital window captured when the
/// DigitalWindowControl is active.
class DigitalWindowBounds extends IInspectable implements IDigitalWindowBounds {
  DigitalWindowBounds() : super(activateClass(_className));
  DigitalWindowBounds.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Devices.DigitalWindowBounds';

  late final _iDigitalWindowBounds = IDigitalWindowBounds.from(this);

  @override
  double get normalizedOriginTop => _iDigitalWindowBounds.normalizedOriginTop;

  @override
  set normalizedOriginTop(double value) =>
      _iDigitalWindowBounds.normalizedOriginTop = value;

  @override
  double get normalizedOriginLeft => _iDigitalWindowBounds.normalizedOriginLeft;

  @override
  set normalizedOriginLeft(double value) =>
      _iDigitalWindowBounds.normalizedOriginLeft = value;

  @override
  double get scale => _iDigitalWindowBounds.scale;

  @override
  set scale(double value) => _iDigitalWindowBounds.scale = value;
}
