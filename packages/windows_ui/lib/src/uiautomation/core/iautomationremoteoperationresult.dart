// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
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

/// @nodoc
const IID_IAutomationRemoteOperationResult =
    '{e0f80c42-4a67-5534-bf5a-09e8a99b36b1}';

class IAutomationRemoteOperationResult extends IInspectable {
  IAutomationRemoteOperationResult.fromPtr(super.ptr)
      : _vtable =
            ptr.ref.vtable.cast<_IAutomationRemoteOperationResultVtbl>().ref;

  final _IAutomationRemoteOperationResultVtbl _vtable;

  factory IAutomationRemoteOperationResult.from(IInspectable interface) =>
      interface.cast(IAutomationRemoteOperationResult.fromPtr,
          IID_IAutomationRemoteOperationResult);

  AutomationRemoteOperationStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_Status.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AutomationRemoteOperationStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  int get extendedError {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ExtendedError.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get errorLocation {
    final value = calloc<Int32>();

    try {
      final hr = _vtable.get_ErrorLocation.asFunction<
          int Function(
              VTablePointer lpVtbl, Pointer<Int32> value)>()(lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  bool hasOperand(AutomationRemoteOperationOperandId operandId) {
    final result = calloc<Bool>();

    try {
      final operandIdNativeStructPtr = operandId.toNative();

      final hr = _vtable.HasOperand.asFunction<
              int Function(
                  VTablePointer lpVtbl,
                  NativeAutomationRemoteOperationOperandId operandId,
                  Pointer<Bool> result)>()(
          lpVtbl, operandIdNativeStructPtr.ref, result);

      free(operandIdNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }

  Object? getOperand(AutomationRemoteOperationOperandId operandId) {
    final result = calloc<COMObject>();
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = _vtable.GetOperand.asFunction<
            int Function(
                VTablePointer lpVtbl,
                NativeAutomationRemoteOperationOperandId operandId,
                Pointer<COMObject> result)>()(
        lpVtbl, operandIdNativeStructPtr.ref, result);

    free(operandIdNativeStructPtr);

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
}

final class _IAutomationRemoteOperationResultVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_Status;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ExtendedError;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<Int32> value)>>
      get_ErrorLocation;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeAutomationRemoteOperationOperandId operandId,
              Pointer<Bool> result)>> HasOperand;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              NativeAutomationRemoteOperationOperandId operandId,
              Pointer<COMObject> result)>> GetOperand;
}
