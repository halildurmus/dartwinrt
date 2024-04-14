// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// The result of calling the PhoneNumberInfo.CheckNumberMatch method.
enum PhoneNumberMatchResult implements WinRTEnum {
  noMatch(0),
  shortNationalSignificantNumberMatch(1),
  nationalSignificantNumberMatch(2),
  exactMatch(3);

  @override
  final int value;

  const PhoneNumberMatchResult(this.value);

  factory PhoneNumberMatchResult.from(int value) =>
      PhoneNumberMatchResult.values.byValue(value);
}
