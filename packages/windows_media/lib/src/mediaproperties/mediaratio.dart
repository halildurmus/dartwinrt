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

import 'imediaratio.dart';

/// Represents ratios used in media operations.
class MediaRatio extends IInspectable implements IMediaRatio {
  MediaRatio.fromPtr(super.ptr);

  late final _iMediaRatio = IMediaRatio.from(this);

  @override
  set numerator(int value) => _iMediaRatio.numerator = value;

  @override
  int get numerator => _iMediaRatio.numerator;

  @override
  set denominator(int value) => _iMediaRatio.denominator = value;

  @override
  int get denominator => _iMediaRatio.denominator;
}
