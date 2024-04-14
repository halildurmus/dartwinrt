// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: deprecated_member_use_from_same_package

import 'package:windows_foundation/windows_foundation.dart';

/// Specifies the possible execution states of a CoreAutomationRemoteOperation.
enum AutomationRemoteOperationStatus implements WinRTEnum {
  success(0),
  malformedBytecode(1),
  instructionLimitExceeded(2),
  unhandledException(3),
  executionFailure(4);

  @override
  final int value;

  const AutomationRemoteOperationStatus(this.value);

  factory AutomationRemoteOperationStatus.from(int value) =>
      AutomationRemoteOperationStatus.values.byValue(value);
}
