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
import 'package:windows_storage/windows_storage.dart';

import 'ipdfdocument.dart';
import 'ipdfdocumentstatics.dart';
import 'pdfpage.dart';

/// Represents a Portable Document Format (PDF) document.
class PdfDocument extends IInspectable implements IPdfDocument {
  PdfDocument.fromPtr(super.ptr);

  static const _className = 'Windows.Data.Pdf.PdfDocument';

  static Future<PdfDocument?> loadFromFileAsync(IStorageFile? file) =>
      createActivationFactory(
              IPdfDocumentStatics.fromPtr, _className, IID_IPdfDocumentStatics)
          .loadFromFileAsync(file);

  static Future<PdfDocument?> loadFromFileWithPasswordAsync(
          IStorageFile? file, String password) =>
      createActivationFactory(
              IPdfDocumentStatics.fromPtr, _className, IID_IPdfDocumentStatics)
          .loadFromFileWithPasswordAsync(file, password);

  static Future<PdfDocument?> loadFromStreamAsync(
          IRandomAccessStream? inputStream) =>
      createActivationFactory(
              IPdfDocumentStatics.fromPtr, _className, IID_IPdfDocumentStatics)
          .loadFromStreamAsync(inputStream);

  static Future<PdfDocument?> loadFromStreamWithPasswordAsync(
          IRandomAccessStream? inputStream, String password) =>
      createActivationFactory(
              IPdfDocumentStatics.fromPtr, _className, IID_IPdfDocumentStatics)
          .loadFromStreamWithPasswordAsync(inputStream, password);

  late final _iPdfDocument = IPdfDocument.from(this);

  @override
  PdfPage? getPage(int pageIndex) => _iPdfDocument.getPage(pageIndex);

  @override
  int get pageCount => _iPdfDocument.pageCount;

  @override
  bool get isPasswordProtected => _iPdfDocument.isPasswordProtected;
}
