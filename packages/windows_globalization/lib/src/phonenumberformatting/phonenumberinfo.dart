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

import 'iphonenumberinfo.dart';
import 'iphonenumberinfofactory.dart';
import 'iphonenumberinfostatics.dart';
import 'phonenumbermatchresult.dart';
import 'phonenumberparseresult.dart';
import 'predictedphonenumberkind.dart';

/// Information about a phone number.
class PhoneNumberInfo extends IInspectable
    implements IPhoneNumberInfo, IStringable {
  PhoneNumberInfo.fromPtr(super.ptr);

  static const _className =
      'Windows.Globalization.PhoneNumberFormatting.PhoneNumberInfo';

  factory PhoneNumberInfo.create(String number) => createActivationFactory(
          IPhoneNumberInfoFactory.fromPtr,
          _className,
          IID_IPhoneNumberInfoFactory)
      .create(number);

  static PhoneNumberParseResult tryParse(
          String input, PhoneNumberInfo phoneNumber) =>
      createActivationFactory(IPhoneNumberInfoStatics.fromPtr, _className,
              IID_IPhoneNumberInfoStatics)
          .tryParse(input, phoneNumber);

  static PhoneNumberParseResult tryParseWithRegion(
          String input, String regionCode, PhoneNumberInfo phoneNumber) =>
      createActivationFactory(IPhoneNumberInfoStatics.fromPtr, _className,
              IID_IPhoneNumberInfoStatics)
          .tryParseWithRegion(input, regionCode, phoneNumber);

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

  late final _iStringable = IStringable.from(this);

  @override
  String toString() => _iStringable.toString();
}
