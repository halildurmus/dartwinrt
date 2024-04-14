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

import 'ipdfpagedimensions.dart';

/// Represents the dimensions of a single page in a Portable Document Format
/// (PDF) document.
class PdfPageDimensions extends IInspectable implements IPdfPageDimensions {
  PdfPageDimensions.fromPtr(super.ptr);

  late final _iPdfPageDimensions = IPdfPageDimensions.from(this);

  @override
  Rect get mediaBox => _iPdfPageDimensions.mediaBox;

  @override
  Rect get cropBox => _iPdfPageDimensions.cropBox;

  @override
  Rect get bleedBox => _iPdfPageDimensions.bleedBox;

  @override
  Rect get trimBox => _iPdfPageDimensions.trimBox;

  @override
  Rect get artBox => _iPdfPageDimensions.artBox;
}
