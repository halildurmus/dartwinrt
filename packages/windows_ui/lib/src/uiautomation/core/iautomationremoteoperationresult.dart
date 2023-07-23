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

/// @nodoc
const IID_IAutomationRemoteOperationResult =
    '{e0f80c42-4a67-5534-bf5a-09e8a99b36b1}';

class IAutomationRemoteOperationResult extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IAutomationRemoteOperationResult.fromPtr(super.ptr);

  factory IAutomationRemoteOperationResult.from(IInspectable interface) =>
      IAutomationRemoteOperationResult.fromPtr(
          interface.toInterface(IID_IAutomationRemoteOperationResult));

  AutomationRemoteOperationStatus get status {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return AutomationRemoteOperationStatus.from(value.value);
    } finally {
      free(value);
    }
  }

  int get extendedError {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(7)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

      if (FAILED(hr)) throwWindowsException(hr);

      return value.value;
    } finally {
      free(value);
    }
  }

  int get errorLocation {
    final value = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
              .elementAt(8)
              .cast<
                  Pointer<
                      NativeFunction<
                          HRESULT Function(
                              VTablePointer lpVtbl, Pointer<Int32> value)>>>()
              .value
              .asFunction<
                  int Function(VTablePointer lpVtbl, Pointer<Int32> value)>()(
          ptr.ref.lpVtbl, value);

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

      final hr =
          ptr.ref.vtable
                  .elementAt(9)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(
                                  VTablePointer lpVtbl,
                                  NativeAutomationRemoteOperationOperandId
                                      operandId,
                                  Pointer<Bool> result)>>>()
                  .value
                  .asFunction<
                      int Function(
                          VTablePointer lpVtbl,
                          NativeAutomationRemoteOperationOperandId operandId,
                          Pointer<Bool> result)>()(
              ptr.ref.lpVtbl, operandIdNativeStructPtr.ref, result);

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

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId operandId,
                            Pointer<COMObject> result)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId operandId,
                    Pointer<COMObject> result)>()(
        ptr.ref.lpVtbl, operandIdNativeStructPtr.ref, result);

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
