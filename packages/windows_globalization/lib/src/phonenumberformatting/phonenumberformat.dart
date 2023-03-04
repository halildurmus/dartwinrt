// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Lists phone number formats supported by this API.
///
/// {@category enum}
enum PhoneNumberFormat implements WinRTEnum {
  e164(0),
  international(1),
  national(2),
  rfc3966(3);

  @override
  final int value;

  const PhoneNumberFormat(this.value);

  factory PhoneNumberFormat.from(int value) =>
      PhoneNumberFormat.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
