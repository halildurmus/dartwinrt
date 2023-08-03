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

import 'iocrword.dart';

/// Represents a single word in a line of text recognized by the OCR engine and
/// returned as part of the OcrLine.
class OcrWord extends IInspectable implements IOcrWord {
  OcrWord.fromPtr(super.ptr);

  late final _iOcrWord = IOcrWord.from(this);

  @override
  Rect get boundingRect => _iOcrWord.boundingRect;

  @override
  String get text => _iOcrWord.text;
}
