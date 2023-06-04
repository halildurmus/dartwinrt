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

import 'iocrresult.dart';
import 'ocrline.dart';

/// Contains the results of Optical Character Recognition (OCR).
class OcrResult extends IInspectable implements IOcrResult {
  OcrResult.fromPtr(super.ptr);

  late final _iOcrResult = IOcrResult.from(this);

  @override
  List<OcrLine> get lines => _iOcrResult.lines;

  @override
  double? get textAngle => _iOcrResult.textAngle;

  @override
  String get text => _iOcrResult.text;
}
