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

import 'capturedframe.dart';
import 'icapturedphoto.dart';

/// Represents a photo taken from a capture device such as a webcam
/// attached.
class CapturedPhoto extends IInspectable implements ICapturedPhoto {
  CapturedPhoto.fromPtr(super.ptr);

  late final _iCapturedPhoto = ICapturedPhoto.from(this);

  @override
  CapturedFrame? get frame => _iCapturedPhoto.frame;

  @override
  CapturedFrame? get thumbnail => _iCapturedPhoto.thumbnail;
}
