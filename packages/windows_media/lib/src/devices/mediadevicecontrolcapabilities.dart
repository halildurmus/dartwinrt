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

import 'imediadevicecontrolcapabilities.dart';

/// Gets the capabilities of a camera setting.
class MediaDeviceControlCapabilities extends IInspectable
    implements IMediaDeviceControlCapabilities {
  MediaDeviceControlCapabilities.fromPtr(super.ptr);

  late final _iMediaDeviceControlCapabilities =
      IMediaDeviceControlCapabilities.from(this);

  @override
  bool get supported => _iMediaDeviceControlCapabilities.supported;

  @override
  double get min => _iMediaDeviceControlCapabilities.min;

  @override
  double get max => _iMediaDeviceControlCapabilities.max;

  @override
  double get step => _iMediaDeviceControlCapabilities.step;

  @override
  double get default_ => _iMediaDeviceControlCapabilities.default_;

  @override
  bool get autoModeSupported =>
      _iMediaDeviceControlCapabilities.autoModeSupported;
}
