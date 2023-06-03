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

import 'iphonenumberformatter.dart';
import 'iphonenumberformatterstatics.dart';
import 'phonenumberformat.dart';
import 'phonenumberinfo.dart';

/// Formats phone numbers.
class PhoneNumberFormatter extends IInspectable
    implements IPhoneNumberFormatter {
  PhoneNumberFormatter() : super(activateClass(_className));
  PhoneNumberFormatter.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter';

  static void tryCreate(String regionCode, PhoneNumberFormatter phoneNumber) =>
      createActivationFactory(IPhoneNumberFormatterStatics.fromPtr, _className,
              IID_IPhoneNumberFormatterStatics)
          .tryCreate(regionCode, phoneNumber);

  static int getCountryCodeForRegion(String regionCode) =>
      createActivationFactory(IPhoneNumberFormatterStatics.fromPtr, _className,
              IID_IPhoneNumberFormatterStatics)
          .getCountryCodeForRegion(regionCode);

  static String getNationalDirectDialingPrefixForRegion(
          String regionCode, bool stripNonDigit) =>
      createActivationFactory(IPhoneNumberFormatterStatics.fromPtr, _className,
              IID_IPhoneNumberFormatterStatics)
          .getNationalDirectDialingPrefixForRegion(regionCode, stripNonDigit);

  static String wrapWithLeftToRightMarkers(String number) =>
      createActivationFactory(IPhoneNumberFormatterStatics.fromPtr, _className,
              IID_IPhoneNumberFormatterStatics)
          .wrapWithLeftToRightMarkers(number);

  late final _iPhoneNumberFormatter = IPhoneNumberFormatter.from(this);

  @override
  String format(PhoneNumberInfo? number) =>
      _iPhoneNumberFormatter.format(number);

  @override
  String formatWithOutputFormat(
          PhoneNumberInfo? number, PhoneNumberFormat numberFormat) =>
      _iPhoneNumberFormatter.formatWithOutputFormat(number, numberFormat);

  @override
  String formatPartialString(String number) =>
      _iPhoneNumberFormatter.formatPartialString(number);

  @override
  String formatString(String number) =>
      _iPhoneNumberFormatter.formatString(number);

  @override
  String formatStringWithLeftToRightMarkers(String number) =>
      _iPhoneNumberFormatter.formatStringWithLeftToRightMarkers(number);
}
