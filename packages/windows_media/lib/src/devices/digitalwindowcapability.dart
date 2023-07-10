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

import 'idigitalwindowcapability.dart';

/// Represents the digital window capture capabilities of the capture
/// device.
class DigitalWindowCapability extends IInspectable
    implements IDigitalWindowCapability {
  DigitalWindowCapability.fromPtr(super.ptr);

  late final _iDigitalWindowCapability = IDigitalWindowCapability.from(this);

  @override
  int get width => _iDigitalWindowCapability.width;

  @override
  int get height => _iDigitalWindowCapability.height;

  @override
  double get minScaleValue => _iDigitalWindowCapability.minScaleValue;

  @override
  double get maxScaleValue => _iDigitalWindowCapability.maxScaleValue;

  @override
  double get minScaleValueWithoutUpsampling =>
      _iDigitalWindowCapability.minScaleValueWithoutUpsampling;

  @override
  Rect get normalizedFieldOfViewLimit =>
      _iDigitalWindowCapability.normalizedFieldOfViewLimit;
}
