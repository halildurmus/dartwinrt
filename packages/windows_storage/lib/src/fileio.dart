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

import 'ifileiostatics.dart';
import 'istoragefile.dart';
import 'streams/ibuffer.dart';
import 'streams/unicodeencoding.dart';

/// Provides helper methods for reading and writing files that are
/// represented by objects of type IStorageFile.
///
/// {@category class}
class FileIO extends IInspectable {
  FileIO.fromPtr(super.ptr);

  static const _className = 'Windows.Storage.FileIO';

  static Future<String> readTextAsync(IStorageFile? file) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .readTextAsync(file);

  static Future<String> readTextWithEncodingAsync(
          IStorageFile? file, UnicodeEncoding encoding) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .readTextWithEncodingAsync(file, encoding);

  static Future<void> writeTextAsync(IStorageFile? file, String contents) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .writeTextAsync(file, contents);

  static Future<void> writeTextWithEncodingAsync(
          IStorageFile? file, String contents, UnicodeEncoding encoding) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .writeTextWithEncodingAsync(file, contents, encoding);

  static Future<void> appendTextAsync(IStorageFile? file, String contents) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .appendTextAsync(file, contents);

  static Future<void> appendTextWithEncodingAsync(
          IStorageFile? file, String contents, UnicodeEncoding encoding) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .appendTextWithEncodingAsync(file, contents, encoding);

  static Future<IVector<String>> readLinesAsync(IStorageFile? file) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .readLinesAsync(file);

  static Future<IVector<String>> readLinesWithEncodingAsync(
          IStorageFile? file, UnicodeEncoding encoding) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .readLinesWithEncodingAsync(file, encoding);

  static Future<void> writeLinesAsync(
          IStorageFile? file, IIterable<String>? lines) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .writeLinesAsync(file, lines);

  static Future<void> writeLinesWithEncodingAsync(IStorageFile? file,
          IIterable<String>? lines, UnicodeEncoding encoding) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .writeLinesWithEncodingAsync(file, lines, encoding);

  static Future<void> appendLinesAsync(
          IStorageFile? file, IIterable<String>? lines) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .appendLinesAsync(file, lines);

  static Future<void> appendLinesWithEncodingAsync(IStorageFile? file,
          IIterable<String>? lines, UnicodeEncoding encoding) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .appendLinesWithEncodingAsync(file, lines, encoding);

  static Future<IBuffer?> readBufferAsync(IStorageFile? file) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .readBufferAsync(file);

  static Future<void> writeBufferAsync(IStorageFile? file, IBuffer? buffer) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .writeBufferAsync(file, buffer);

  static Future<void> writeBytesAsync(IStorageFile? file, List<int> value) =>
      createActivationFactory(
              IFileIOStatics.fromPtr, _className, IID_IFileIOStatics)
          .writeBytesAsync(file, value);
}
