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
import 'package:windows_ui/windows_ui.dart';

import 'ipdfpagerenderoptions.dart';

/// Represents display settings for a single page of a Portable Document Format
/// (PDF) document, such as the page's background color and its encoding type.
class PdfPageRenderOptions extends IInspectable
    implements IPdfPageRenderOptions {
  PdfPageRenderOptions() : super(activateClass(_className));
  PdfPageRenderOptions.fromPtr(super.ptr);

  static const _className = 'Windows.Data.Pdf.PdfPageRenderOptions';

  late final _iPdfPageRenderOptions = IPdfPageRenderOptions.from(this);

  @override
  Rect get sourceRect => _iPdfPageRenderOptions.sourceRect;

  @override
  set sourceRect(Rect value) => _iPdfPageRenderOptions.sourceRect = value;

  @override
  int get destinationWidth => _iPdfPageRenderOptions.destinationWidth;

  @override
  set destinationWidth(int value) =>
      _iPdfPageRenderOptions.destinationWidth = value;

  @override
  int get destinationHeight => _iPdfPageRenderOptions.destinationHeight;

  @override
  set destinationHeight(int value) =>
      _iPdfPageRenderOptions.destinationHeight = value;

  @override
  Color get backgroundColor => _iPdfPageRenderOptions.backgroundColor;

  @override
  set backgroundColor(Color value) =>
      _iPdfPageRenderOptions.backgroundColor = value;

  @override
  bool get isIgnoringHighContrast =>
      _iPdfPageRenderOptions.isIgnoringHighContrast;

  @override
  set isIgnoringHighContrast(bool value) =>
      _iPdfPageRenderOptions.isIgnoringHighContrast = value;

  @override
  Guid get bitmapEncoderId => _iPdfPageRenderOptions.bitmapEncoderId;

  @override
  set bitmapEncoderId(Guid value) =>
      _iPdfPageRenderOptions.bitmapEncoderId = value;
}
