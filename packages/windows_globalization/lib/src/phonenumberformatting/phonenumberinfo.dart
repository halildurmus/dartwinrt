// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'enums.g.dart';
import 'iphonenumberinfo.dart';
import 'iphonenumberinfofactory.dart';
import 'iphonenumberinfostatics.dart';

/// Information about a phone number.
///
/// {@category class}
class PhoneNumberInfo extends IInspectable
    implements IPhoneNumberInfo, IStringable {
  PhoneNumberInfo.fromRawPointer(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo';

  // IPhoneNumberInfoFactory methods
  static PhoneNumberInfo create(String number) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPhoneNumberInfoFactory);
    final object = IPhoneNumberInfoFactory.fromRawPointer(activationFactoryPtr);

    try {
      return object.create(number);
    } finally {
      object.release();
    }
  }

  // IPhoneNumberInfoStatics methods
  static PhoneNumberParseResult tryParse(
      String input, PhoneNumberInfo phoneNumber) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPhoneNumberInfoStatics);
    final object = IPhoneNumberInfoStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.tryParse(input, phoneNumber);
    } finally {
      object.release();
    }
  }

  static PhoneNumberParseResult tryParseWithRegion(
      String input, String regionCode, PhoneNumberInfo phoneNumber) {
    final activationFactoryPtr =
        createActivationFactory(_className, IID_IPhoneNumberInfoStatics);
    final object = IPhoneNumberInfoStatics.fromRawPointer(activationFactoryPtr);

    try {
      return object.tryParseWithRegion(input, regionCode, phoneNumber);
    } finally {
      object.release();
    }
  }

  // IPhoneNumberInfo methods
  late final _iPhoneNumberInfo = IPhoneNumberInfo.from(this);

  @override
  int get countryCode => _iPhoneNumberInfo.countryCode;

  @override
  String get phoneNumber => _iPhoneNumberInfo.phoneNumber;

  @override
  int getLengthOfGeographicalAreaCode() =>
      _iPhoneNumberInfo.getLengthOfGeographicalAreaCode();

  @override
  String getNationalSignificantNumber() =>
      _iPhoneNumberInfo.getNationalSignificantNumber();

  @override
  int getLengthOfNationalDestinationCode() =>
      _iPhoneNumberInfo.getLengthOfNationalDestinationCode();

  @override
  PredictedPhoneNumberKind predictNumberKind() =>
      _iPhoneNumberInfo.predictNumberKind();

  @override
  String getGeographicRegionCode() =>
      _iPhoneNumberInfo.getGeographicRegionCode();

  @override
  PhoneNumberMatchResult checkNumberMatch(PhoneNumberInfo? otherNumber) =>
      _iPhoneNumberInfo.checkNumberMatch(otherNumber);

  // IStringable methods
  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
