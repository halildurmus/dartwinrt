// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart'
    hide DocumentProperties, WinRTStringConversion;
import 'package:windows_foundation/internal.dart';
import 'package:windows_foundation/windows_foundation.dart';

import 'automationremoteoperationoperandid.dart';
import 'automationremoteoperationstatus.dart';
import 'iautomationremoteoperationresult.dart';

/// Provides access to the execution results (status and remote objects) of a
/// CoreAutomationRemoteOperation.
class AutomationRemoteOperationResult extends IInspectable
    implements IAutomationRemoteOperationResult {
  AutomationRemoteOperationResult.fromPtr(super.ptr);

  late final _iAutomationRemoteOperationResult =
      IAutomationRemoteOperationResult.from(this);

  @override
  AutomationRemoteOperationStatus get status =>
      _iAutomationRemoteOperationResult.status;

  @override
  int get extendedError => _iAutomationRemoteOperationResult.extendedError;

  @override
  int get errorLocation => _iAutomationRemoteOperationResult.errorLocation;

  @override
  bool hasOperand(AutomationRemoteOperationOperandId operandId) =>
      _iAutomationRemoteOperationResult.hasOperand(operandId);

  @override
  Object? getOperand(AutomationRemoteOperationOperandId operandId) =>
      _iAutomationRemoteOperationResult.getOperand(operandId);
}
