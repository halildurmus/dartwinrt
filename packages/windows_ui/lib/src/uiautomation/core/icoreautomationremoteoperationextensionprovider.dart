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
import 'coreautomationremoteoperationcontext.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperationExtensionProvider =
    '{88f53e67-dc69-553b-a0aa-70477e724da8}';

/// Provides support for implementing one or more pattern extensions for a
/// UI Automation provider.
class ICoreAutomationRemoteOperationExtensionProvider extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  ICoreAutomationRemoteOperationExtensionProvider.fromPtr(super.ptr);

  factory ICoreAutomationRemoteOperationExtensionProvider.from(
          IInspectable interface) =>
      ICoreAutomationRemoteOperationExtensionProvider.fromPtr(interface
          .toInterface(IID_ICoreAutomationRemoteOperationExtensionProvider));

  void callExtension(
      Guid extensionId,
      CoreAutomationRemoteOperationContext? context,
      List<AutomationRemoteOperationOperandId> operandIds) {
    final extensionIdNativeStructPtr = extensionId.toNativeGUID();
    final nativeStructPtrs =
        <Pointer<NativeAutomationRemoteOperationOperandId>>[];
    final pOperandIdsArray =
        calloc<NativeAutomationRemoteOperationOperandId>(operandIds.length);
    for (var i = 0; i < operandIds.length; i++) {
      final nativeStructPtr = operandIds[i].toNative();
      pOperandIdsArray[i] = nativeStructPtr.ref;
      nativeStructPtrs.add(nativeStructPtr);
    }

    final hr = ptr.ref.vtable
            .elementAt(6)
            .cast<
                Pointer<
                    NativeFunction<
                        HRESULT Function(
                            VTablePointer lpVtbl,
                            GUID extensionId,
                            VTablePointer context,
                            Uint32 operandIdsSize,
                            Pointer<NativeAutomationRemoteOperationOperandId>
                                operandIds)>>>()
            .value
            .asFunction<
                int Function(
                    VTablePointer lpVtbl,
                    GUID extensionId,
                    VTablePointer context,
                    int operandIdsSize,
                    Pointer<NativeAutomationRemoteOperationOperandId>
                        operandIds)>()(
        ptr.ref.lpVtbl,
        extensionIdNativeStructPtr.ref,
        context == null ? nullptr : context.ptr.ref.lpVtbl,
        operandIds.length,
        pOperandIdsArray);

    free(extensionIdNativeStructPtr);
    nativeStructPtrs.forEach(free);
    free(pOperandIdsArray);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  bool isExtensionSupported(Guid extensionId) {
    final result = calloc<Bool>();

    try {
      final extensionIdNativeStructPtr = extensionId.toNativeGUID();

      final hr =
          ptr.ref.vtable
                  .elementAt(7)
                  .cast<
                      Pointer<
                          NativeFunction<
                              HRESULT Function(VTablePointer lpVtbl,
                                  GUID extensionId, Pointer<Bool> result)>>>()
                  .value
                  .asFunction<
                      int Function(VTablePointer lpVtbl, GUID extensionId,
                          Pointer<Bool> result)>()(
              ptr.ref.lpVtbl, extensionIdNativeStructPtr.ref, result);

      free(extensionIdNativeStructPtr);

      if (FAILED(hr)) throw WindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}
