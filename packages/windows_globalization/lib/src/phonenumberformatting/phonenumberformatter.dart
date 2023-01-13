// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'iphonenumberformatter.dart';
import 'iphonenumberformatterstatics.dart';
import 'phonenumberinfo.dart';

/// Formats phone numbers.
///
/// {@category class}
class PhoneNumberFormatter extends IInspectable
    implements IPhoneNumberFormatter {
  PhoneNumberFormatter() : super(ActivateClass(_className));
  PhoneNumberFormatter.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberFormatter';

  // IPhoneNumberFormatterStatics methods
  static void tryCreate(String regionCode, PhoneNumberFormatter phoneNumber) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);
    final object =
        IPhoneNumberFormatterStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.tryCreate(regionCode, phoneNumber);
    } finally {
      object.release();
    }
  }

  static int getCountryCodeForRegion(String regionCode) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);
    final object =
        IPhoneNumberFormatterStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getCountryCodeForRegion(regionCode);
    } finally {
      object.release();
    }
  }

  static String getNationalDirectDialingPrefixForRegion(
      String regionCode, bool stripNonDigit) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);
    final object =
        IPhoneNumberFormatterStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.getNationalDirectDialingPrefixForRegion(
          regionCode, stripNonDigit);
    } finally {
      object.release();
    }
  }

  static String wrapWithLeftToRightMarkers(String number) {
    final activationFactoryPtr =
        CreateActivationFactory(_className, IID_IPhoneNumberFormatterStatics);
    final object =
        IPhoneNumberFormatterStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.wrapWithLeftToRightMarkers(number);
    } finally {
      object.release();
    }
  }

  // IPhoneNumberFormatter methods
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
