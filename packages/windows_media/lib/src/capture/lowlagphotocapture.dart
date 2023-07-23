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

import 'capturedphoto.dart';
import 'ilowlagphotocapture.dart';

/// Provides methods for taking a low shutter lag photo.
class LowLagPhotoCapture extends IInspectable implements ILowLagPhotoCapture {
  LowLagPhotoCapture.fromPtr(super.ptr);

  late final _iLowLagPhotoCapture = ILowLagPhotoCapture.from(this);

  @override
  Future<CapturedPhoto?> captureAsync() => _iLowLagPhotoCapture.captureAsync();

  @override
  Future<void> finishAsync() => _iLowLagPhotoCapture.finishAsync();
}
