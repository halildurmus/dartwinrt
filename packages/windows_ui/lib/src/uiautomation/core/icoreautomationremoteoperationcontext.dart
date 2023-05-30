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

import 'automationremoteoperationoperandid.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperationContext =
    '{b9af9cbb-3d3e-5918-a16b-7861626a3aeb}';

/// {@category interface}
class ICoreAutomationRemoteOperationContext extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  ICoreAutomationRemoteOperationContext.fromPtr(super.ptr);

  factory ICoreAutomationRemoteOperationContext.from(IInspectable interface) =>
      ICoreAutomationRemoteOperationContext.fromPtr(
          interface.toInterface(IID_ICoreAutomationRemoteOperationContext));

  Object? getOperand(AutomationRemoteOperationOperandId id) {
    final retValuePtr = calloc<COMObject>();
    final idNativeStructPtr = id.toNative();

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId id,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId id,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, idNativeStructPtr.ref, retValuePtr);

    free(idNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.ref.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }

  void setOperand(AutomationRemoteOperationOperandId id, Object? operand) {
    final idNativeStructPtr = id.toNative();
    final operandPtr = operand?.intoBox().ptr.ref.lpVtbl ?? nullptr;

    final hr = ptr.ref.vtable
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
        ptr.ref.lpVtbl, idNativeStructPtr.ref, operandPtr);

    free(idNativeStructPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void setOperand2(AutomationRemoteOperationOperandId id, Object? operand,
      Guid operandInterfaceId) {
    final idNativeStructPtr = id.toNative();
    final operandPtr = operand?.intoBox().ptr.ref.lpVtbl ?? nullptr;
    final operandInterfaceIdNativeGuidPtr = operandInterfaceId.toNativeGUID();

    final hr = ptr.ref.vtable
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
                    GUID operandInterfaceId)>()(ptr.ref.lpVtbl,
        idNativeStructPtr.ref, operandPtr, operandInterfaceIdNativeGuidPtr.ref);

    free(idNativeStructPtr);
    free(operandInterfaceIdNativeGuidPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
