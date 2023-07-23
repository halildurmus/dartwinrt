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

import 'inumberformatter.dart';
import 'inumberformatteroptions.dart';
import 'inumberparser.dart';
import 'inumberrounder.dart';
import 'inumberrounderoption.dart';
import 'ipermilleformatterfactory.dart';
import 'isignedzerooption.dart';
import 'isignificantdigitsoption.dart';

/// Formats and parses permillages.
class PermilleFormatter extends IInspectable
    implements
        INumberFormatterOptions,
        INumberFormatter,
        INumberParser,
        ISignificantDigitsOption,
        INumberRounderOption,
        ISignedZeroOption {
  PermilleFormatter() : super(activateClass(_className));
  PermilleFormatter.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.NumberFormatting.PermilleFormatter';

  factory PermilleFormatter.createPermilleFormatter(
          IIterable<String>? languages, String geographicRegion) =>
      createActivationFactory(IPermilleFormatterFactory.fromPtr, _className,
              IID_IPermilleFormatterFactory)
          .createPermilleFormatter(languages, geographicRegion);

  late final _iNumberFormatterOptions = INumberFormatterOptions.from(this);

  @override
  List<String>? get languages => _iNumberFormatterOptions.languages;

  @override
  String get geographicRegion => _iNumberFormatterOptions.geographicRegion;

  @override
  int get integerDigits => _iNumberFormatterOptions.integerDigits;

  @override
  set integerDigits(int value) =>
      _iNumberFormatterOptions.integerDigits = value;

  @override
  int get fractionDigits => _iNumberFormatterOptions.fractionDigits;

  @override
  set fractionDigits(int value) =>
      _iNumberFormatterOptions.fractionDigits = value;

  @override
  bool get isGrouped => _iNumberFormatterOptions.isGrouped;

  @override
  set isGrouped(bool value) => _iNumberFormatterOptions.isGrouped = value;

  @override
  bool get isDecimalPointAlwaysDisplayed =>
      _iNumberFormatterOptions.isDecimalPointAlwaysDisplayed;

  @override
  set isDecimalPointAlwaysDisplayed(bool value) =>
      _iNumberFormatterOptions.isDecimalPointAlwaysDisplayed = value;

  @override
  String get numeralSystem => _iNumberFormatterOptions.numeralSystem;

  @override
  set numeralSystem(String value) =>
      _iNumberFormatterOptions.numeralSystem = value;

  @override
  String get resolvedLanguage => _iNumberFormatterOptions.resolvedLanguage;

  @override
  String get resolvedGeographicRegion =>
      _iNumberFormatterOptions.resolvedGeographicRegion;

  late final _iNumberFormatter = INumberFormatter.from(this);

  @override
  String formatInt(int value) => _iNumberFormatter.formatInt(value);

  @override
  String formatUInt(int value) => _iNumberFormatter.formatUInt(value);

  @override
  String formatDouble(double value) => _iNumberFormatter.formatDouble(value);

  late final _iNumberParser = INumberParser.from(this);

  @override
  int? parseInt(String text) => _iNumberParser.parseInt(text);

  @override
  int? parseUInt(String text) => _iNumberParser.parseUInt(text);

  @override
  double? parseDouble(String text) => _iNumberParser.parseDouble(text);

  late final _iSignificantDigitsOption = ISignificantDigitsOption.from(this);

  @override
  int get significantDigits => _iSignificantDigitsOption.significantDigits;

  @override
  set significantDigits(int value) =>
      _iSignificantDigitsOption.significantDigits = value;

  late final _iNumberRounderOption = INumberRounderOption.from(this);

  @override
  INumberRounder? get numberRounder => _iNumberRounderOption.numberRounder;

  @override
  set numberRounder(INumberRounder? value) =>
      _iNumberRounderOption.numberRounder = value;

  late final _iSignedZeroOption = ISignedZeroOption.from(this);

  @override
  bool get isZeroSigned => _iSignedZeroOption.isZeroSigned;

  @override
  set isZeroSigned(bool value) => _iSignedZeroOption.isZeroSigned = value;
}
