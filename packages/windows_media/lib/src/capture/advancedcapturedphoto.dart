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

import '../devices/advancedphotomode.dart';
import 'capturedframe.dart';
import 'iadvancedcapturedphoto.dart';
import 'iadvancedcapturedphoto2.dart';

/// Represents a photo captured using system-provided computational
/// photography techniques provided by the AdvancedPhotoCapture class.
class AdvancedCapturedPhoto extends IInspectable
    implements IAdvancedCapturedPhoto, IAdvancedCapturedPhoto2 {
  AdvancedCapturedPhoto.fromPtr(super.ptr);

  late final _iAdvancedCapturedPhoto = IAdvancedCapturedPhoto.from(this);

  @override
  CapturedFrame? get frame => _iAdvancedCapturedPhoto.frame;

  @override
  AdvancedPhotoMode get mode => _iAdvancedCapturedPhoto.mode;

  @override
  Object? get context => _iAdvancedCapturedPhoto.context;

  late final _iAdvancedCapturedPhoto2 = IAdvancedCapturedPhoto2.from(this);

  @override
  Rect? get frameBoundsRelativeToReferencePhoto =>
      _iAdvancedCapturedPhoto2.frameBoundsRelativeToReferencePhoto;
}
