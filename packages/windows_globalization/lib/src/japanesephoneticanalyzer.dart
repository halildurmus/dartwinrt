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

import 'ijapanesephoneticanalyzerstatics.dart';
import 'japanesephoneme.dart';

/// Reads a Japanese string that is a combination of Kanji characters and
/// Hiragana characters, and returns a collection of proper readings from
/// the string with word breaks.
class JapanesePhoneticAnalyzer extends IInspectable {
  JapanesePhoneticAnalyzer.fromPtr(super.ptr);

  static const _className = 'Windows.Globalization.JapanesePhoneticAnalyzer';

  static List<JapanesePhoneme?> getWords(String input) =>
      createActivationFactory(IJapanesePhoneticAnalyzerStatics.fromPtr,
              _className, IID_IJapanesePhoneticAnalyzerStatics)
          .getWords(input);

  static List<JapanesePhoneme?> getWordsWithMonoRubyOption(
          String input, bool monoRuby) =>
      createActivationFactory(IJapanesePhoneticAnalyzerStatics.fromPtr,
              _className, IID_IJapanesePhoneticAnalyzerStatics)
          .getWordsWithMonoRubyOption(input, monoRuby);
}
