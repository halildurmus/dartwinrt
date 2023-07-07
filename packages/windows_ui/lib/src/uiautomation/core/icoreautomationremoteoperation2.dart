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
import 'automationremoteoperationoperandid.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperation2 =
    '{eefaf86f-e953-5099-8ce9-dca813482ba0}';

class ICoreAutomationRemoteOperation2 extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ICoreAutomationRemoteOperation2.fromPtr(super.ptr);

  factory ICoreAutomationRemoteOperation2.from(IInspectable interface) =>
      ICoreAutomationRemoteOperation2.fromPtr(
          interface.toInterface(IID_ICoreAutomationRemoteOperation2));

  void importConnectionBoundObject(AutomationRemoteOperationOperandId operandId,
      AutomationConnectionBoundObject? connectionBoundObject) {
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId operandId,
                            VTablePointer connectionBoundObject)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId operandId,
                    VTablePointer connectionBoundObject)>()(
        ptr.ref.lpVtbl,
        operandIdNativeStructPtr.ref,
        connectionBoundObject?.ptr.ref.lpVtbl ?? nullptr);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
