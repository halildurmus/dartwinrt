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
import 'icoreautomationremoteoperationcontext.dart';

/// Provides the ability for a ICoreAutomationRemoteOperationExtensionProvider
/// object to read and write operands.
class CoreAutomationRemoteOperationContext extends IInspectable
    implements ICoreAutomationRemoteOperationContext {
  CoreAutomationRemoteOperationContext.fromPtr(super.ptr);

  late final _iCoreAutomationRemoteOperationContext =
      ICoreAutomationRemoteOperationContext.from(this);

  @override
  Object? getOperand(AutomationRemoteOperationOperandId id) =>
      _iCoreAutomationRemoteOperationContext.getOperand(id);

  @override
  void setOperand(AutomationRemoteOperationOperandId id, Object? operand) =>
      _iCoreAutomationRemoteOperationContext.setOperand(id, operand);

  @override
  void setOperand2(AutomationRemoteOperationOperandId id, Object? operand,
          Guid operandInterfaceId) =>
      _iCoreAutomationRemoteOperationContext.setOperand2(
          id, operand, operandInterfaceId);
}
