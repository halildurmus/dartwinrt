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

import '../automationelement.dart';
import '../automationtextrange.dart';
import 'automationremoteoperationoperandid.dart';
import 'automationremoteoperationresult.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperation =
    '{3ac656f4-e2bc-5c6e-b8e7-b224fb74b060}';

class ICoreAutomationRemoteOperation extends IInspectable {
  ICoreAutomationRemoteOperation.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_ICoreAutomationRemoteOperationVtbl>().ref;

  final _ICoreAutomationRemoteOperationVtbl _vtable;

  factory ICoreAutomationRemoteOperation.from(IInspectable interface) =>
      interface.cast(ICoreAutomationRemoteOperation.fromPtr,
          IID_ICoreAutomationRemoteOperation);

  bool isOpcodeSupported(int opcode) {
    final result = calloc<Bool>();

    try {
      final hr = _vtable.IsOpcodeSupported.asFunction<
          int Function(VTablePointer lpVtbl, int opcode,
              Pointer<Bool> result)>()(lpVtbl, opcode, result);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  void importElement(AutomationRemoteOperationOperandId operandId,
      AutomationElement? element) {
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = _vtable.ImportElement.asFunction<
            int Function(
                VTablePointer lpVtbl,
                NativeAutomationRemoteOperationOperandId operandId,
                VTablePointer element)>()(
        lpVtbl, operandIdNativeStructPtr.ref, element.lpVtbl);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void importTextRange(AutomationRemoteOperationOperandId operandId,
      AutomationTextRange? textRange) {
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = _vtable.ImportTextRange.asFunction<
            int Function(
                VTablePointer lpVtbl,
                NativeAutomationRemoteOperationOperandId operandId,
                VTablePointer textRange)>()(
        lpVtbl, operandIdNativeStructPtr.ref, textRange.lpVtbl);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  void addToResults(AutomationRemoteOperationOperandId operandId) {
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = _vtable.AddToResults.asFunction<
            int Function(VTablePointer lpVtbl,
                NativeAutomationRemoteOperationOperandId operandId)>()(
        lpVtbl, operandIdNativeStructPtr.ref);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throwWindowsException(hr);
  }

  AutomationRemoteOperationResult? execute(List<int> bytecodeBuffer) {
    final result = calloc<COMObject>();
    final bytecodeBufferArray = bytecodeBuffer.toArray<Uint8>();

    final hr = _vtable.Execute.asFunction<
            int Function(VTablePointer lpVtbl, int bytecodeBufferSize,
                Pointer<Uint8> bytecodeBuffer, Pointer<COMObject> result)>()(
        lpVtbl, bytecodeBuffer.length, bytecodeBufferArray, result);

    free(bytecodeBufferArray);

    if (FAILED(hr)) {
      free(result);
      throwWindowsException(hr);
    }

    if (result.isNull) {
      free(result);
      return null;
    }

    return AutomationRemoteOperationResult.fromPtr(result);
  }
}

final class _ICoreAutomationRemoteOperationVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Uint32 opcode, Pointer<Bool> result)>>
      IsOpcodeSupported;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeAutomationRemoteOperationOperandId operandId,
              VTablePointer element)>> ImportElement;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeAutomationRemoteOperationOperandId operandId,
              VTablePointer textRange)>> ImportTextRange;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl,
                  NativeAutomationRemoteOperationOperandId operandId)>>
      AddToResults;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              Uint32 bytecodeBufferSize,
              Pointer<Uint8> bytecodeBuffer,
              Pointer<COMObject> result)>> Execute;
}
