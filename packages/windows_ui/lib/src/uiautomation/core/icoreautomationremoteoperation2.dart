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

import '../automationconnectionboundobject.dart';
import 'automationremoteoperationoperandid.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperation2 =
    '{eefaf86f-e953-5099-8ce9-dca813482ba0}';

class ICoreAutomationRemoteOperation2 extends IInspectable {
  ICoreAutomationRemoteOperation2.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ICoreAutomationRemoteOperation2Vtbl>().ref;

  final _ICoreAutomationRemoteOperation2Vtbl _vtable;

  factory ICoreAutomationRemoteOperation2.from(IInspectable interface) =>
      interface.cast(ICoreAutomationRemoteOperation2.fromPtr,
          IID_ICoreAutomationRemoteOperation2);

  void importConnectionBoundObject(AutomationRemoteOperationOperandId operandId,
      AutomationConnectionBoundObject? connectionBoundObject) {
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = _vtable.ImportConnectionBoundObject.asFunction<
            int Function(
                VTablePointer lpVtbl,
                NativeAutomationRemoteOperationOperandId operandId,
                VTablePointer connectionBoundObject)>()(
        lpVtbl, operandIdNativeStructPtr.ref, connectionBoundObject.lpVtbl);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}

final class _ICoreAutomationRemoteOperation2Vtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl,
                  NativeAutomationRemoteOperationOperandId operandId,
                  VTablePointer connectionBoundObject)>>
      ImportConnectionBoundObject;
}
