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
import 'package:windows_storage/windows_storage.dart';

import 'ipdfpage.dart';
import 'pdfpagedimensions.dart';
import 'pdfpagerenderoptions.dart';
import 'pdfpagerotation.dart';

/// Represents a single page in a Portable Document Format (PDF) document.
class PdfPage extends IInspectable implements IPdfPage, IClosable {
  PdfPage.fromPtr(super.ptr);

  late final _iPdfPage = IPdfPage.from(this);

  @override
  Future<void> renderToStreamAsync(IRandomAccessStream? outputStream) =>
      _iPdfPage.renderToStreamAsync(outputStream);

  @override
  Future<void> renderWithOptionsToStreamAsync(
          IRandomAccessStream? outputStream, PdfPageRenderOptions? options) =>
      _iPdfPage.renderWithOptionsToStreamAsync(outputStream, options);

  @override
  Future<void> preparePageAsync() => _iPdfPage.preparePageAsync();

  @override
  int get index => _iPdfPage.index;

  @override
  Size get size => _iPdfPage.size;

  @override
  PdfPageDimensions? get dimensions => _iPdfPage.dimensions;

  @override
  PdfPageRotation get rotation => _iPdfPage.rotation;

  @override
  double get preferredZoom => _iPdfPage.preferredZoom;

  late final _iClosable = IClosable.from(this);

  @override
  void close() => _iClosable.close();
}
