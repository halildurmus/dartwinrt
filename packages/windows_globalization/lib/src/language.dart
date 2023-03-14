// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart' hide DocumentProperties;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'ilanguage.dart';
import 'ilanguage2.dart';
import 'ilanguage3.dart';
import 'ilanguageextensionsubtags.dart';
import 'ilanguagefactory.dart';
import 'ilanguagestatics.dart';
import 'ilanguagestatics2.dart';
import 'ilanguagestatics3.dart';
import 'languagelayoutdirection.dart';

/// A class that provides information related to BCP-47 language tags such
/// as the language name and the script.
///
/// {@category class}
class Language extends IInspectable
    implements ILanguage, ILanguageExtensionSubtags, ILanguage2, ILanguage3 {
  Language.fromPtr(super.ptr);

  static const _className = 'Windows.Globalization.Language';

  factory Language.createLanguage(String languageTag) =>
      createActivationFactory(
              ILanguageFactory.fromPtr, _className, IID_ILanguageFactory)
          .createLanguage(languageTag);

  static bool isWellFormed(String languageTag) => createActivationFactory(
          ILanguageStatics.fromPtr, _className, IID_ILanguageStatics)
      .isWellFormed(languageTag);

  static String get currentInputMethodLanguageTag => createActivationFactory(
          ILanguageStatics.fromPtr, _className, IID_ILanguageStatics)
      .currentInputMethodLanguageTag;

  static bool trySetInputMethodLanguageTag(String languageTag) =>
      createActivationFactory(
              ILanguageStatics2.fromPtr, _className, IID_ILanguageStatics2)
          .trySetInputMethodLanguageTag(languageTag);

  static IVector<String> getMuiCompatibleLanguageListFromLanguageTags(
          IIterable<String>? languageTags) =>
      createActivationFactory(
              ILanguageStatics3.fromPtr, _className, IID_ILanguageStatics3)
          .getMuiCompatibleLanguageListFromLanguageTags(languageTags);

  late final _iLanguage = ILanguage.from(this);

  @override
  String get languageTag => _iLanguage.languageTag;

  @override
  String get displayName => _iLanguage.displayName;

  @override
  String get nativeName => _iLanguage.nativeName;

  @override
  String get script => _iLanguage.script;

  late final _iLanguageExtensionSubtags = ILanguageExtensionSubtags.from(this);

  @override
  List<String> getExtensionSubtags(String singleton) =>
      _iLanguageExtensionSubtags.getExtensionSubtags(singleton);

  late final _iLanguage2 = ILanguage2.from(this);

  @override
  LanguageLayoutDirection get layoutDirection => _iLanguage2.layoutDirection;

  late final _iLanguage3 = ILanguage3.from(this);

  @override
  String get abbreviatedName => _iLanguage3.abbreviatedName;
}
