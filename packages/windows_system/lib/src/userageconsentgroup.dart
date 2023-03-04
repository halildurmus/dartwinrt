// Copyright (c) 2023, the dartwinrt authors. Please see the AUTHORS file for
// details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the age consent groups a user can belong to.
///
/// {@category enum}
enum UserAgeConsentGroup implements WinRTEnum {
  child(0),
  minor(1),
  adult(2);

  @override
  final int value;

  const UserAgeConsentGroup(this.value);

  factory UserAgeConsentGroup.from(int value) =>
      UserAgeConsentGroup.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
