// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// The kinds of phone numbers returned by PhoneNumberInfo.PredictNumberKind.
enum PredictedPhoneNumberKind implements WinRTEnum {
  fixedLine(0),
  mobile(1),
  fixedLineOrMobile(2),
  tollFree(3),
  premiumRate(4),
  sharedCost(5),
  voip(6),
  personalNumber(7),
  pager(8),
  universalAccountNumber(9),
  voicemail(10),
  unknown(11);

  @override
  final int value;

  const PredictedPhoneNumberKind(this.value);

  factory PredictedPhoneNumberKind.from(int value) =>
      PredictedPhoneNumberKind.values.byValue(value);
}
