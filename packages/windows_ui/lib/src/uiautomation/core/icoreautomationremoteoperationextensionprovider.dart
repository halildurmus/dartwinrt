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
import 'coreautomationremoteoperationcontext.dart';

/// @nodoc
const IID_ICoreAutomationRemoteOperationExtensionProvider =
    '{88f53e67-dc69-553b-a0aa-70477e724da8}';

/// Provides support for implementing one or more pattern extensions for a UI
/// Automation provider.
class ICoreAutomationRemoteOperationExtensionProvider extends IInspectable {
  ICoreAutomationRemoteOperationExtensionProvider.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable
            .cast<_ICoreAutomationRemoteOperationExtensionProviderVtbl>()
            .ref;

  final _ICoreAutomationRemoteOperationExtensionProviderVtbl _vtable;

  factory ICoreAutomationRemoteOperationExtensionProvider.from(
          IInspectable interface) =>
      interface.cast(ICoreAutomationRemoteOperationExtensionProvider.fromPtr,
          IID_ICoreAutomationRemoteOperationExtensionProvider);

  void callExtension(
      Guid extensionId,
      CoreAutomationRemoteOperationContext? context,
      List<AutomationRemoteOperationOperandId> operandIds) {
    final extensionIdNativeStructPtr = extensionId.toNativeGUID();
    final allocator = Arena();
    final operandIdsArray = operandIds.toArray(allocator: allocator);

    final hr = _vtable.CallExtension.asFunction<
            int Function(
                VTablePointer lpVtbl,
                GUID extensionId,
                VTablePointer context,
                int operandIdsSize,
                Pointer<NativeAutomationRemoteOperationOperandId>
                    operandIds)>()(lpVtbl, extensionIdNativeStructPtr.ref,
        context.lpVtbl, operandIds.length, operandIdsArray);

    free(extensionIdNativeStructPtr);
    allocator.releaseAll();

    if (FAILED(hr)) throwWindowsException(hr);
  }

  bool isExtensionSupported(Guid extensionId) {
    final result = calloc<Bool>();

    try {
      final extensionIdNativeStructPtr = extensionId.toNativeGUID();

      final hr = _vtable.IsExtensionSupported.asFunction<
              int Function(VTablePointer lpVtbl, GUID extensionId,
                  Pointer<Bool> result)>()(
          lpVtbl, extensionIdNativeStructPtr.ref, result);

      free(extensionIdNativeStructPtr);

      if (FAILED(hr)) throwWindowsException(hr);

      return result.value;
    } finally {
      free(result);
    }
  }
}

final class _ICoreAutomationRemoteOperationExtensionProviderVtbl
    extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
      NativeFunction<
          HRESULT Function(
              VTablePointer lpVtbl,
              GUID extensionId,
              VTablePointer context,
              Uint32 operandIdsSize,
              Pointer<NativeAutomationRemoteOperationOperandId>
                  operandIds)>> CallExtension;
  external Pointer<
      NativeFunction<
          HRESULT Function(VTablePointer lpVtbl, GUID extensionId,
              Pointer<Bool> result)>> IsExtensionSupported;
}
