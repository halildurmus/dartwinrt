// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the result of a call to CheckUserAgeConsentGroupAsync, querying
/// for a user's membership in a specified UserAgeConsentGroup.
enum UserAgeConsentResult implements WinRTEnum {
  notEnforced(0),
  included(1),
  notIncluded(2),
  unknown(3),
  ambiguous(4);

  @override
  final int value;

  const UserAgeConsentResult(this.value);

  factory UserAgeConsentResult.from(int value) =>
      UserAgeConsentResult.values.byValue(value);
}
