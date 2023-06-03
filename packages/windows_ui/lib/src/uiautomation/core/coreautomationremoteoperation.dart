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

import '../automationconnectionboundobject.dart';
import '../automationelement.dart';
import '../automationtextrange.dart';
import 'automationremoteoperationoperandid.dart';
import 'automationremoteoperationresult.dart';
import 'icoreautomationremoteoperation.dart';
import 'icoreautomationremoteoperation2.dart';

/// Represents an entry point for UI Automation (UIA) clients to use remote
/// operations.
class CoreAutomationRemoteOperation extends IInspectable
    implements ICoreAutomationRemoteOperation, ICoreAutomationRemoteOperation2 {
  CoreAutomationRemoteOperation() : super(activateClass(_className));
  CoreAutomationRemoteOperation.fromPtr(super.ptr);

  static const _className =
      'Windows.UI.UIAutomation.Core.CoreAutomationRemoteOperation';

  late final _iCoreAutomationRemoteOperation =
      ICoreAutomationRemoteOperation.from(this);

  @override
  bool isOpcodeSupported(int opcode) =>
      _iCoreAutomationRemoteOperation.isOpcodeSupported(opcode);

  @override
  void importElement(AutomationRemoteOperationOperandId operandId,
          AutomationElement? element) =>
      _iCoreAutomationRemoteOperation.importElement(operandId, element);

  @override
  void importTextRange(AutomationRemoteOperationOperandId operandId,
          AutomationTextRange? textRange) =>
      _iCoreAutomationRemoteOperation.importTextRange(operandId, textRange);

  @override
  void addToResults(AutomationRemoteOperationOperandId operandId) =>
      _iCoreAutomationRemoteOperation.addToResults(operandId);

  @override
  AutomationRemoteOperationResult? execute(List<int> value) =>
      _iCoreAutomationRemoteOperation.execute(value);

  late final _iCoreAutomationRemoteOperation2 =
      ICoreAutomationRemoteOperation2.from(this);

  @override
  void importConnectionBoundObject(AutomationRemoteOperationOperandId operandId,
          AutomationConnectionBoundObject? connectionBoundObject) =>
      _iCoreAutomationRemoteOperation2.importConnectionBoundObject(
          operandId, connectionBoundObject);
}
