// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Represents the status of a web token request.
enum WebTokenRequestStatus implements WinRTEnum {
  success(0),
  userCancel(1),
  accountSwitch(2),
  userInteractionRequired(3),
  accountProviderNotAvailable(4),
  providerError(5);

  @override
  final int value;

  const WebTokenRequestStatus(this.value);

  factory WebTokenRequestStatus.from(int value) =>
      WebTokenRequestStatus.values.byValue(value);
}
