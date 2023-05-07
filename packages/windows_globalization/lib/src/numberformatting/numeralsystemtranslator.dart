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

import 'inumeralsystemtranslator.dart';
import 'inumeralsystemtranslatorfactory.dart';

/// Translates digits of the Latin numerical system into digits of another
/// numerical system.
///
/// {@category class}
class NumeralSystemTranslator extends IInspectable
    implements INumeralSystemTranslator {
  NumeralSystemTranslator() : super(activateClass(_className));
  NumeralSystemTranslator.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.NumberFormatting.NumeralSystemTranslator';

  factory NumeralSystemTranslator.create(IIterable<String> languages) =>
      createActivationFactory(INumeralSystemTranslatorFactory.fromPtr,
              _className, IID_INumeralSystemTranslatorFactory)
          .create(languages);

  late final _iNumeralSystemTranslator = INumeralSystemTranslator.from(this);

  @override
  List<String> get languages => _iNumeralSystemTranslator.languages;

  @override
  String get resolvedLanguage => _iNumeralSystemTranslator.resolvedLanguage;

  @override
  String get numeralSystem => _iNumeralSystemTranslator.numeralSystem;

  @override
  set numeralSystem(String value) =>
      _iNumeralSystemTranslator.numeralSystem = value;

  @override
  String translateNumerals(String value) =>
      _iNumeralSystemTranslator.translateNumerals(value);
}
