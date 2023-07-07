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
import 'package:windows_globalization/windows_globalization.dart';
import 'package:windows_graphics/windows_graphics.dart';

import 'iocrengine.dart';
import 'iocrenginestatics.dart';
import 'ocrresult.dart';

/// Provides optical character recognition (OCR) functionality.
class OcrEngine extends IInspectable implements IOcrEngine {
  OcrEngine.fromPtr(super.ptr);

  static const _className = 'Windows.Media.Ocr.OcrEngine';

  static int get maxImageDimension => createActivationFactory(
          IOcrEngineStatics.fromPtr, _className, IID_IOcrEngineStatics)
      .maxImageDimension;

  static List<Language?>? get availableRecognizerLanguages =>
      createActivationFactory(
              IOcrEngineStatics.fromPtr, _className, IID_IOcrEngineStatics)
          .availableRecognizerLanguages;

  static bool isLanguageSupported(Language? language) =>
      createActivationFactory(
              IOcrEngineStatics.fromPtr, _className, IID_IOcrEngineStatics)
          .isLanguageSupported(language);

  static OcrEngine? tryCreateFromLanguage(Language? language) =>
      createActivationFactory(
              IOcrEngineStatics.fromPtr, _className, IID_IOcrEngineStatics)
          .tryCreateFromLanguage(language);

  static OcrEngine? tryCreateFromUserProfileLanguages() =>
      createActivationFactory(
              IOcrEngineStatics.fromPtr, _className, IID_IOcrEngineStatics)
          .tryCreateFromUserProfileLanguages();

  late final _iOcrEngine = IOcrEngine.from(this);

  @override
  Future<OcrResult?> recognizeAsync(SoftwareBitmap? bitmap) =>
      _iOcrEngine.recognizeAsync(bitmap);

  @override
  Language? get recognizerLanguage => _iOcrEngine.recognizerLanguage;
}
