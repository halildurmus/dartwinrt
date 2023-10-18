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

/// @nodoc
const IID_IRemoteAutomationWindow = '{7c607689-496d-512a-9bd5-c050cfaf1428}';

class IRemoteAutomationWindow extends IInspectable {
  IRemoteAutomationWindow.fromPtr(super.ptr)
      : _vtable = ptr.ref.vtable.cast<_IRemoteAutomationWindowVtbl>().ref;

  final _IRemoteAutomationWindowVtbl _vtable;

  factory IRemoteAutomationWindow.from(IInspectable interface) => interface
      .cast(IRemoteAutomationWindow.fromPtr, IID_IRemoteAutomationWindow);

  Object? get automationProvider {
    final value = calloc<COMObject>();

    final hr = _vtable.get_AutomationProvider.asFunction<
        int Function(
            VTablePointer lpVtbl, Pointer<COMObject> value)>()(lpVtbl, value);

    if (FAILED(hr)) {
      free(value);
      throwWindowsException(hr);
    }

    if (value.isNull) {
      free(value);
      return null;
    }

    return IPropertyValue.fromPtr(value).value;
  }

  Future<void> unregisterAsync() {
    final operation = calloc<COMObject>();

    final hr = _vtable.UnregisterAsync.asFunction<
            int Function(VTablePointer lpVtbl, Pointer<COMObject> operation)>()(
        lpVtbl, operation);

    if (FAILED(hr)) {
      free(operation);
      throwWindowsException(hr);
    }

    return IAsyncAction.fromPtr(operation).toFuture();
  }
}

final class _IRemoteAutomationWindowVtbl extends Struct {
  external IInspectableVtbl baseVtbl;
  external Pointer<
          NativeFunction<
              HRESULT Function(VTablePointer lpVtbl, Pointer<COMObject> value)>>
      get_AutomationProvider;
  external Pointer<
          NativeFunction<
              HRESULT Function(
                  VTablePointer lpVtbl, Pointer<COMObject> operation)>>
      UnregisterAsync;
}
