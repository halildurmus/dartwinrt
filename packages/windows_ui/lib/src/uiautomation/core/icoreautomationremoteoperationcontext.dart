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

/// @nodoc
const IID_ICoreAutomationRemoteOperationContext =
    '{b9af9cbb-3d3e-5918-a16b-7861626a3aeb}';

class ICoreAutomationRemoteOperationContext extends IInspectable {
  ICoreAutomationRemoteOperationContext.fromPtr(super.ptr);

  factory ICoreAutomationRemoteOperationContext.from(IInspectable interface) =>
      interface.cast(ICoreAutomationRemoteOperationContext.fromPtr,
          IID_ICoreAutomationRemoteOperationContext);

  Object? getOperand(AutomationRemoteOperationOperandId id) {
    final result = calloc<COMObject>();
    final idNativeStructPtr = id.toNative();

    final hr = vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId id,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId id,
                    Pointer<COMObject> result)>()(
        lpVtbl, idNativeStructPtr.ref, result);

    free(idNativeStructPtr);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return IPropertyValue.fromPtr(result).value;
  }

  void setOperand(AutomationRemoteOperationOperandId id, Object? operand) {
    final idNativeStructPtr = id.toNative();

    final hr = vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId id,
                            VTablePointer operand)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId id,
                    VTablePointer operand)>()(
        lpVtbl, idNativeStructPtr.ref, operand?.boxValue().lpVtbl ?? nullptr);

    free(idNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void setOperand2(AutomationRemoteOperationOperandId id, Object? operand,
      Guid operandInterfaceId) {
    final idNativeStructPtr = id.toNative();
    final operandInterfaceIdNativeStructPtr = operandInterfaceId.toNativeGUID();

    final hr = vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId id,
                            VTablePointer operand,
                            GUID operandInterfaceId)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId id,
                    VTablePointer operand,
                    GUID operandInterfaceId)>()(
        lpVtbl,
        idNativeStructPtr.ref,
        operand?.boxValue().lpVtbl ?? nullptr,
        operandInterfaceIdNativeStructPtr.ref);

    free(idNativeStructPtr);
    free(operandInterfaceIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }
}
