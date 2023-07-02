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

import '../automationelement.dart';
import '../automationtextrange.dart';
import 'automationremoteoperationoperandid.dart';
import 'automationremoteoperationresult.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperation =
    '{3ac656f4-e2bc-5c6e-b8e7-b224fb74b060}';

class ICoreAutomationRemoteOperation extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  ICoreAutomationRemoteOperation.fromPtr(super.ptr);

  factory ICoreAutomationRemoteOperation.from(IInspectable interface) =>
      ICoreAutomationRemoteOperation.fromPtr(
          interface.toInterface(IID_ICoreAutomationRemoteOperation));

  bool isOpcodeSupported(int opcode) {
    final retValuePtr = calloc<Bool>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(VTablePointer lpVtbl, Uint32 opcode,
                              Pointer<Bool> retValuePtr)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, int opcode,
                      Pointer<Bool> retValuePtr)>()(
          ptr.ref.lpVtbl, opcode, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  void importElement(AutomationRemoteOperationOperandId operandId,
      AutomationElement? element) {
    final operandIdNativeStructPtr = operandId.toNative();
    final elementPtr = element == null ? nullptr : element.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(7)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId operandId,
                            VTablePointer element)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId operandId,
                    VTablePointer element)>()(
        ptr.ref.lpVtbl, operandIdNativeStructPtr.ref, elementPtr);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void importTextRange(AutomationRemoteOperationOperandId operandId,
      AutomationTextRange? textRange) {
    final operandIdNativeStructPtr = operandId.toNative();
    final textRangePtr = textRange == null ? nullptr : textRange.ptr.ref.lpVtbl;

    final hr = ptr.ref.vtable
            .elementAt(8)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId operandId,
                            VTablePointer textRange)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId operandId,
                    VTablePointer textRange)>()(
        ptr.ref.lpVtbl, operandIdNativeStructPtr.ref, textRangePtr);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  void addToResults(AutomationRemoteOperationOperandId operandId) {
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = ptr.ref.vtable
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(VTablePointer lpVtbl,
                        NativeAutomationRemoteOperationOperandId operandId)>>>()
        .value
        .asFunction<
            int Function(
                VTablePointer lpVtbl,
                NativeAutomationRemoteOperationOperandId
                    operandId)>()(ptr.ref.lpVtbl, operandIdNativeStructPtr.ref);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  AutomationRemoteOperationResult? execute(List<int> bytecodeBuffer) {
    final retValuePtr = calloc<COMObject>();
    final pBytecodeBufferArray = calloc<Uint8>(bytecodeBuffer.length);
    for (var i = 0; i < bytecodeBuffer.length; i++) {
      pBytecodeBufferArray[i] = bytecodeBuffer.elementAt(i);
    }

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            Uint32 bytecodeBufferSize,
                            Pointer<Uint8> bytecodeBuffer,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    int bytecodeBufferSize,
                    Pointer<Uint8> bytecodeBuffer,
                    Pointer<COMObject> retValuePtr)>()(ptr.ref.lpVtbl,
        bytecodeBuffer.length, pBytecodeBufferArray, retValuePtr);

    free(pBytecodeBufferArray);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return AutomationRemoteOperationResult.fromPtr(retValuePtr);
  }
}
