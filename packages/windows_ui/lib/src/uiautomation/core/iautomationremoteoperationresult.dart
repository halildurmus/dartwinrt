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
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return AutomationRemoteOperationStatus.from(retValuePtr.value);
    } finally {
      free(retValuePtr);
    }
  }

  int get extendedError {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  int get errorLocation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.vtable
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      HRESULT Function(
                          VTablePointer lpVtbl, Pointer<Int32> retValuePtr)>>>()
          .value
          .asFunction<
              int Function(VTablePointer lpVtbl,
                  Pointer<Int32> retValuePtr)>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  bool hasOperand(AutomationRemoteOperationOperandId operandId) {
    final retValuePtr = calloc<Bool>();

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
                                  Pointer<Bool> retValuePtr)>>>()
                  .value
                  .asFunction<
                      int Function(
                          VTablePointer lpVtbl,
                          NativeAutomationRemoteOperationOperandId operandId,
                          Pointer<Bool> retValuePtr)>()(
              ptr.ref.lpVtbl, operandIdNativeStructPtr.ref, retValuePtr);

      free(operandIdNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return retValuePtr.value;
    } finally {
      free(retValuePtr);
    }
  }

  Object? getOperand(AutomationRemoteOperationOperandId operandId) {
    final retValuePtr = calloc<COMObject>();
    final operandIdNativeStructPtr = operandId.toNative();

    final hr = ptr.ref.vtable
            .elementAt(10)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            NativeAutomationRemoteOperationOperandId operandId,
                            Pointer<COMObject> retValuePtr)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    NativeAutomationRemoteOperationOperandId operandId,
                    Pointer<COMObject> retValuePtr)>()(
        ptr.ref.lpVtbl, operandIdNativeStructPtr.ref, retValuePtr);

    free(operandIdNativeStructPtr);

    if (FAILED(hr)) {
      free(retValuePtr);
      throw WindowsException(hr);
    }

    if (retValuePtr.isNull) {
      free(retValuePtr);
      return null;
    }

    return IPropertyValue.fromPtr(retValuePtr).value;
  }
}
